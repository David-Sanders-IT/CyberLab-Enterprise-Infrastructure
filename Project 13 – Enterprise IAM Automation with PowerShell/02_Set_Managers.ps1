Import-Module ActiveDirectory

$CsvPath = "C:\PowerShell\employees.csv"
$LogPath = "C:\PowerShell\02_Set_Managers_Log.txt"

$Users = Import-Csv `
    -Path $CsvPath

$UpdatedCount = 0
$FailedCount = 0

"Manager assignment started: $(Get-Date)" |
Out-File `
    -FilePath $LogPath

foreach ($User in $Users)
{

    if ([string]::IsNullOrWhiteSpace($User.ManagerUsername))
    {
        continue
    }

    try
    {

        $Employee = Get-ADUser `
            -Identity $User.Username `
            -ErrorAction Stop

        $Manager = Get-ADUser `
            -Identity $User.ManagerUsername `
            -ErrorAction Stop

        Set-ADUser `
            -Identity $Employee `
            -Manager $Manager.DistinguishedName `
            -ErrorAction Stop

        Write-Host `
            "UPDATED: $($User.Username) -> Manager: $($User.ManagerUsername)" `
            -ForegroundColor Green

        "UPDATED: $($User.Username) -> $($User.ManagerUsername)" |
        Out-File `
            -FilePath $LogPath `
            -Append

        $UpdatedCount++

    }
    catch
    {

        Write-Host `
            "FAILED: $($User.Username)" `
            -ForegroundColor Red

        $FailedCount++

    }

}

Write-Host ""

Write-Host "Manager assignment completed." -ForegroundColor Cyan

Write-Host ""

Write-Host "Updated: $UpdatedCount"

Write-Host "Failed: $FailedCount"

Write-Host ""

Write-Host "Log File: $LogPath"