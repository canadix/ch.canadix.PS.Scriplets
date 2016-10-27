Get-Process *ss

 Get-Process | where Handle -gt 900 |sort Handle

 Get-Service -Name BITS | gm

 Get-Service | Select-Object -Property Name,ServiceName

 Get-ChildItem | select -Property name, Length | sort -Property length -Descending

 
Get-Process | gm

Get-EventLog -LogName System -Newest 5 | select -Property EventID, TimeWritten, Message | sort -Property timewritten | ConvertTo-Html | Out-File c:\a\error.htm


$x = [xml](cat .\a\r_and_j.xml)

 $x.GetType()

$x.PLAY.act.scene.speech |group speaker | sort count

Get-Service | where -FilterScript {$_.Status -eq "running"}

Get-Service | where {$PSItem.Status -eq "Running" -and $_.Name -like "*b*"}

gps |where {$_.handles -ge 1000}

gps *ss |where {$true}

gps |where Handles -ge 1000


Get-ADComputer -Identity u248145 |select -Property name, @{n='computername' ;e={$_.name}}


Get-ADComputer -Identity u248145 |select -Property @{n='computername' ;e={$_.name}} | Get-Service -name BITS

Get-WmiObject -Class win32_BIOS

Get-ADComputer -Filter * | select -Property name

Get-WmiObject -class win32_bios -ComputerName (Get-ADComputer -Identity U248145 | select -ExpandProperty name)

Get-WmiObject -class win32_bios -ComputerName (Get-ADComputer -Identity U248145).name