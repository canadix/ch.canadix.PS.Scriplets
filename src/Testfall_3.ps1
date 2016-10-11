[int]$count = 0
[int]$endCount = 50
Do { $count++ ; Write-Host $count } while($count -ne 50)


[int]$count = 0
[int]$endCount = 50
ForEach ($count in 1..25 ) { $count * 2}


$count/2
