<#
	module (  
ModuleType Version    Name
---------- -------    ----
Manifest   3.1.0.0    Microsoft.PowerShell.Management
Manifest   3.0.0.0    Microsoft.PowerShell.Security
Manifest   3.1.0.0    Microsoft.PowerShell.Utility
Manifest   3.0.0.0    Microsoft.WSMan.Management
 )
#>

get-module
Get-Module

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
