Import-Module ActiveDirectory

$CsvPath = "C:\PowerShell\employees.csv"
$ReportPath = "C:\PowerShell\AD_Audit_Report.csv"
$LogPath = "C:\PowerShell\04_Generate_AD_Audit_Report_Log.txt"

$Users = Import-Csv `
    -Path $CsvPath

$Report = foreach ($User in $Users) {

    try {

        $ADUser = Get-ADUser `
            -Identity $User.Username `
            -Properties `
                Department,
                Title,
                Company,
                Office,
                Enabled,
                Manager,
                MemberOf,
                DistinguishedName `
            -ErrorAction Stop

        $ManagerName = ""

        if ($ADUser.Manager) {

            $ManagerName = Get-ADUser `
                -Identity $ADUser.Manager `
                -ErrorAction Stop |
            Select-Object `
                -ExpandProperty Name
        }

        $GroupNames = foreach ($GroupDN in $ADUser.MemberOf) {

            Get-ADGroup `
                -Identity $GroupDN `
                -ErrorAction Stop |
            Select-Object `
                -ExpandProperty Name
        }

        [PSCustomObject]@{
            Name           = $ADUser.Name
            Username       = $ADUser.SamAccountName
            UserPrincipalName = $ADUser.UserPrincipalName
            Department     = $ADUser.Department
            Title          = $ADUser.Title
            Company        = $ADUser.Company
            Office         = $ADUser.Office
            Enabled        = $ADUser.Enabled
            Manager        = $ManagerName
            Groups         = ($GroupNames -join "; ")
            OU             = ($ADUser.DistinguishedName -replace "^CN=.*?,", "")
        }

        "REPORTED: $($ADUser.SamAccountName)" |
            Out-File `
                -FilePath $LogPath `
                -Append
    }
    catch {

        Write-Host `
            "FAILED: $($User.Username) - $($_.Exception.Message)" `
            -ForegroundColor Red

        "FAILED: $($User.Username) - $($_.Exception.Message)" |
            Out-File `
                -FilePath $LogPath `
                -Append
    }
}

$Report |
    Export-Csv `
        -Path $ReportPath `
        -NoTypeInformation `
        -Encoding UTF8

Write-Host ""

Write-Host `
    "AD audit report created successfully." `
    -ForegroundColor Green

Write-Host ""

Write-Host `
    "Users reported: $($Report.Count)" `
    -ForegroundColor Cyan

Write-Host `
    "Report path: $ReportPath" `
    -ForegroundColor Cyan