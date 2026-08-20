Import-Module ActiveDirectory

$GroupPath = "OU=Security Groups,OU=Groups,OU=Corporate,DC=corp,DC=cyberlab,DC=local"

$Groups = @(
    "SG-Executive",
    "SG-IT",
    "SG-Finance",
    "SG-HR",
    "SG-Marketing",
    "SG-Sales",
    "SG-Operations"
)

foreach ($GroupName in $Groups) {

    $ExistingGroup = Get-ADGroup `
        -Identity $GroupName `
        -ErrorAction SilentlyContinue

    if ($ExistingGroup) {

        Write-Host `
            "GROUP EXISTS: $GroupName" `
            -ForegroundColor Yellow
    }
    else {

        New-ADGroup `
            -Name $GroupName `
            -SamAccountName $GroupName `
            -GroupScope Global `
            -GroupCategory Security `
            -Description "Department security group for $GroupName" `
            -Path $GroupPath

        Write-Host `
            "GROUP CREATED: $GroupName" `
            -ForegroundColor Green
    }
}