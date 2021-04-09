clear
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Operator

function Copy-Pwd-Clip
{
    $path = pwd | Convert-Path
    $path = $path -replace "`n",", " -replace "`r",", "
    Write-Output "Copied $path to clipboard"
    $path | clip
}
New-Alias -Name "cpwd" -Value Copy-Pwd-Clip
