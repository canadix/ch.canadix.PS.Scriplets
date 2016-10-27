

clear-host

cls

ipconfig /all

Get-Alias -Definition Get-Process


Get-Service -Name BITS | Stop-Service
Get-Service -Name BITS | Start-Service

Get-Service | Export-Csv -Path c:\a\service.txt
Import-Csv -Path c:\service.txt

Get-Process | Export-Clixml -Path C:\a\good.xml

Compare-Object -ReferenceObject (Import-Clixml c:\a\good.xml) -DifferenceObject (Get-Process) -Property Name

Get-Service | Out-File -FilePath c:\a\test.txt

Get-Help *out*

Get-Service | ConvertTo-Html -Property name,status | Out-File c:\a\test.htm

Get-Service | Stop-Service -WhatIf -Confirm

Get-Service -DisplayName *bit* | Stop-Service -WhatIf


mmc

Get-Module -ListAvailable 

get-help *active*

Get-ADDomain -Server corproot.net
