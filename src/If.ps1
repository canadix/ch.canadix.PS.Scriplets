if($test){
   echo "Wert von Test: " $test
   }
   
if($test -ge 5){
	echo "test ist größer oder gleich 5"
	}

if($test){
    echo "Wert von Test: " $test
    }
else{
   echo "Wert von Test ist null oder undefiniert"
		switch(Read-Host "Wählen Sie einen Menüpunkt"){
			1 {"Datei wird $test1 gelöscht"}
			2 {"Datei wird angezeigt"}
			3 {"Datei erhält Schreibschutz"}
			default {"Ungültige Eingabe"}
	}
}
   
   

if(Test-Path *.gif){gci *.gif|foreach{$len += $_.length}; Write-Host $len " Bytes"}


$list = dir 
foreach ($item in $list) 
{
    $fn = $item.name + "_.txt"
    Get-ItemProperty $item | Format-List | out-file $fn 
    
}

$list = dir 
foreach ($item in $list) 
{
    $fn = $item.name + "_.txt"
    if (test-path $fn)
    {
        del $fn 
    }
}

if (10 -gt 5)

{

write-host "yes"

}


#10 gt 11

If (10 -gt 11)

{

write-host "yes"

} elseif (11 -gt 10)

{

write-host "this time, yes"

}


If (10 -gt 11)

{

write-host "yes"

} elseif (11 -lt 10)

{

write-host "This time, yes"

} elseif (20 -gt 40)
{

write-host " Third time was a charm"

} else {

write-host "You're really terrible at math, aren't you?"

}



