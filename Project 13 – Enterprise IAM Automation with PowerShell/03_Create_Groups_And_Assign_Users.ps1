Import-Module ActiveDirectory

$CsvPath = "C:\PowerShell\employees.csv"
$LogPath = "C:\PowerShell\03_Create_Groups_And_Assign_Users_Log.txt"

$Users = Import-Csv `
    -Path $CsvPath

$GroupPath = "OU=Security Groups,OU=Groups,OU=Corporate,DC=corp,DC=cyberlab,DC=local"

$CreatedGroups = 0
$ExistingGroups = 0
$AssignedUsers = 0
$SkippedAssignments = 0
$FailedCount = 0

"Group creation and assignment started: $(Get-Date)" |
    Out-File `
        -FilePath $LogPath

$UniqueGroups = $Users |
    Select-Object `
        -ExpandProperty Group `
        -Unique

foreach ($GroupName in $UniqueGroups) {

    try {

        $ExistingGroup = Get-ADGroup `
            -Identity $GroupName `
            -ErrorAction SilentlyContinue

        if ($ExistingGroup) {

            Write-Host `
                "GROUP EXISTS: $GroupName" `
                -ForegroundColor Yellow

            $ExistingGroups++
        }
        else {

            New-ADGroup `
                -Name $GroupName `
                -SamAccountName $GroupName `
                -GroupScope Global `
                -GroupCategory Security `
                -Description "Department security group for $GroupName" `
                -Path $GroupPath `
                -ErrorAction Stop

            Write-Host `
                "GROUP CREATED: $GroupName" `
                -ForegroundColor Green

            "GROUP CREATED: $GroupName" |
                Out-File `
                    -FilePath $LogPath `
                    -Append

            $CreatedGroups++
        }
    }
    catch {

        Write-Host `
            "GROUP FAILED: $GroupName - $($_.Exception.Message)" `
            -ForegroundColor Red

        "GROUP FAILED: $GroupName - $($_.Exception.Message)" |
            Out-File `
                -FilePath $LogPath `
                -Append

        $FailedCount++
    }
}

foreach ($User in $Users) {

    try {

        $UserObject = Get-ADUser `
            -Identity $User.Username `
            -ErrorAction Stop

        $GroupObject = Get-ADGroup `
            -Identity $User.Group `
            -ErrorAction Stop

        $AlreadyMember = Get-ADGroupMember `
            -Identity $GroupObject `
            -ErrorAction Stop |
        Where-Object {
            $_.SamAccountName -eq $User.Username
        }

        if ($AlreadyMember) {

            Write-Host `
                "SKIPPED: $($User.Username) already belongs to $($User.Group)" `
                -ForegroundColor Yellow

            $SkippedAssignments++

            continue
        }

        Add-ADGroupMember `
            -Identity $GroupObject `
            -Members $UserObject `
            -ErrorAction Stop

        Write-Host `
            "ASSIGNED: $($User.Username) -> $($User.Group)" `
            -ForegroundColor Green

        "ASSIGNED: $($User.Username) -> $($User.Group)" |
            Out-File `
                -FilePath $LogPath `
                -Append

        $AssignedUsers++
    }
    catch {

        Write-Host `
            "ASSIGNMENT FAILED: $($User.Username) - $($_.Exception.Message)" `
            -ForegroundColor Red

        "ASSIGNMENT FAILED: $($User.Username) - $($_.Exception.Message)" |
            Out-File `
                -FilePath $LogPath `
                -Append

        $FailedCount++
    }
}

$Summary = @"

Group automation completed: $(Get-Date)

Groups created:        $CreatedGroups
Groups already existed: $ExistingGroups
Users assigned:        $AssignedUsers
Assignments skipped:   $SkippedAssignments
Failures:               $FailedCount

Log file: $LogPath
"@

Write-Host `
    $Summary `
    -ForegroundColor Cyan

$Summary |
    Out-File `
        -FilePath $LogPath `
        -Append