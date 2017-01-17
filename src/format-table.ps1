Get-Process | Format-Table -Property Name,id,vm,@{n='pm(mb)';e={$_.pm / 1mb -as [int]}} -AutoSize


Get-Service | Sort status -desc | Format-Table -GroupBy Status


Format-List 

Get-WmiObject -Class win32_logicaldisk | Format-List -Property *
