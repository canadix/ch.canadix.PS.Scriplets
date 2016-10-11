[string]$value1 = "gross" 
[string]$value2 = "klein"


if($value1 -eq $value2)
{
    write-host "true"
}
else
{
	write-host "false"
}

[string]$value1 = "tiger" 
[string]$value2 = "tiger"

if($value1 -eq $value2)
{
    write-host "true"
}
else
{
	write-host "false"
}



[string]$value1 = "tiger" 
[string]$value2 = "TIGER"

if($value1 -cLike $value2)
{
    write-host "true"
}
else
{
	write-host "false"
}

[string]$value1 = "tiger" 
[string]$value2 = "TIGER"

if($value1 -eq $value2)
{
    write-host "false"
}
else
{
	write-host "True"
}

