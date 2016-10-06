Write-Host "Hello, world!"



# lists the module from where the Cmdlet Write-Host is
Get-Command Write-Host

<#
CommandType     Name                                               Version    Source                                                            
-----------     ----                                               -------    ------                                                            
Cmdlet          Write-Host                                         3.1.0.0    Microsoft.PowerShell.Utility                                      

#>

get-host
Name 			: consolehost
Version			: 5.0.10586.177

PS U:\> (get-host).Version

Major  Minor  Build  Revision
-----  -----  -----  --------
5      0      10586  117




Get-Command |sls process

<#
Debug-Process
Enter-PSHostProcess
Exit-PSHostProcess
Get-ASScalingProcessType
Get-Process
Get-PSHostProcessInfo
Resume-ASProcess
Start-Process
Stop-Process
Suspend-ASProcess
Wait-Process
#>


