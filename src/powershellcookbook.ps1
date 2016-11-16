get-process | where-object {$_.handles -ge 500 } | Sort-Object handles | Format-Table Handles,name,description -auto


# Ubiquitous Scripting
$HandleCount = 0
foreach  ($process in Get-Process) { $HandleCount += $process.handles }
$HandleCount

#firewall
$firewall = New-Object -com HNetCfg.FwMgr
$firewall.LocalPolicy.CurrentProfile

Set-Location HKCU:\Software\Microsoft\Windows\


Get-ItemProperty .

Set-Location cert:\CurrentUser\Root
Get-ChildItem