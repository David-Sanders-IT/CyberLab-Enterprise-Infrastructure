Import-Module ActiveDirectory

$CsvPath = "C:\PowerShell\employees.csv"
$LogPath = "C:\PowerShell\01_Create_Users_Log.txt"

$TemporaryPassword = ConvertTo-SecureString `
    "CyberLab!2026" `
    -AsPlainText `
    -Force

$Users = Import-Csv `
    -Path $CsvPath

$CreatedCount = 0
$SkippedCount = 0
$FailedCount = 0

"Bulk user creation started: $(Get-Date)" |
    Out-File `
        -FilePath $LogPath

foreach ($User in $Users) {

    $FullName = "$($User.FirstName) $($User.LastName)"

    try {

        $ExistingUser = Get-ADUser `
            -Filter "SamAccountName -eq '$($User.Username)'" `
            -ErrorAction SilentlyContinue

        if ($ExistingUser) {

            Write-Host `
                "SKIPPED: $FullName already exists." `
                -ForegroundColor Yellow

            "SKIPPED: $FullName [$($User.Username)] already exists." |
                Out-File `
                    -FilePath $LogPath `
                    -Append

            $SkippedCount++

            continue
        }

        Get-ADOrganizationalUnit `
            -Identity $User.OU `
            -ErrorAction Stop |
        Out-Null

        $EnabledStatus = [System.Convert]::ToBoolean($User.Enabled)

        New-ADUser `
            -Name $FullName `
            -GivenName $User.FirstName `
            -Surname $User.LastName `
            -DisplayName $FullName `
            -SamAccountName $User.Username `
            -UserPrincipalName $User.UserPrincipalName `
            -Department $User.Department `
            -Title $User.Title `
            -Company $User.Company `
            -Office $User.Office `
            -Path $User.OU `
            -AccountPassword $TemporaryPassword `
            -Enabled $EnabledStatus `
            -ChangePasswordAtLogon $true `
            -ErrorAction Stop

        Write-Host `
            "CREATED: $FullName" `
            -ForegroundColor Green

        "CREATED: $FullName [$($User.Username)]" |
            Out-File `
                -FilePath $LogPath `
                -Append

        $CreatedCount++
    }
    catch {

        Write-Host `
            "FAILED: $FullName - $($_.Exception.Message)" `
            -ForegroundColor Red

        "FAILED: $FullName [$($User.Username)] - $($_.Exception.Message)" |
            Out-File `
                -FilePath $LogPath `
                -Append

        $FailedCount++
    }
}

$Summary = @"

Bulk creation completed: $(Get-Date)

Created: $CreatedCount
Skipped: $SkippedCount
Failed:  $FailedCount

Log file: $LogPath
"@

Write-Host `
    $Summary `
    -ForegroundColor Cyan

$Summary |
    Out-File `
        -FilePath $LogPath `
        -Append