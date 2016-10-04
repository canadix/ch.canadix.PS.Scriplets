Write-Host "Hello, world!"

Get-Module

# lists the module from where the Cmdlet Write-Host is
Get-Command Write-Host

<#
CommandType     Name                                               Version    Source                                                            
-----------     ----                                               -------    ------                                                            
Cmdlet          Write-Host                                         3.1.0.0    Microsoft.PowerShell.Utility                                      

#>

# list all module that contain ActiveD
Get-Module -ListAvailable | sls ActiveD
<#

ActiveDirectory

#>


Get-Module -ListAvailable | sls biz | Select -Unique

<#
biz.dfch.PS.Activiti.Client
biz.dfch.PS.Appclusive.Client
biz.dfch.PS.Azure.ServiceBus.Client
biz.dfch.PS.Cimi.Client
biz.dfch.PS.Ipam.Infoblox.Api
biz.dfch.PS.Pester.Assertions
biz.dfch.PS.Redmine.Client
biz.dfch.PS.System.Data
biz.dfch.PS.System.Logging
biz.dfch.PS.System.Utilities

#>


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

