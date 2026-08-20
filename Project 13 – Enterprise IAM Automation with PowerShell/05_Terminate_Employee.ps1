Import-Module ActiveDirectory

$Username = Read-Host "Enter username to terminate"

$DisabledOU = "OU=Disabled Accounts,OU=Corporate,DC=corp,DC=cyberlab,DC=local"

$LogFile = "C:\PowerShell\05_Terminate_Employee_Log.txt"

$Password = ConvertTo-SecureString `
    "Disabled!2026" `
    -AsPlainText `
    -Force

try
{

    $User = Get-ADUser `
        -Identity $Username `
        -Properties MemberOf `
        -ErrorAction Stop

    Write-Host ""
    Write-Host "Processing $Username..." -ForegroundColor Cyan

    ####################################################
    # Reset Password
    ####################################################

    Set-ADAccountPassword `
        -Identity $User `
        -Reset `
        -NewPassword $Password

    ####################################################
    # Disable Account
    ####################################################

    Disable-ADAccount `
        -Identity $User

    ####################################################
    # Remove Group Membership
    ####################################################

    foreach($Group in $User.MemberOf)
    {

        Remove-ADGroupMember `
            -Identity $Group `
            -Members $User `
            -Confirm:$false

    }

    ####################################################
    # Move Account
    ####################################################

    Move-ADObject `
        -Identity $User.DistinguishedName `
        -TargetPath $DisabledOU

    ####################################################
    # Log
    ####################################################

    $Message = @"

=====================================

Termination Completed

User: $Username

Date: $(Get-Date)

=====================================

"@

    $Message |
    Out-File `
        $LogFile `
        -Append

    Write-Host ""
    Write-Host "Termination Complete." -ForegroundColor Green

}
catch
{

    Write-Host ""
    Write-Host $_.Exception.Message -ForegroundColor Red

}