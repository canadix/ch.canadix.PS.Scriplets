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
   }

if(Test-Path *.gif){gci *.gif|foreach{$len += $_.length}; Write-Host $len " Bytes"}

switch(Read-Host "Wählen Sie einen Menüpunkt"){
1 {"Datei wird gelöscht"}
2 {"Datei wird angezeigt"}
3 {"Datei erhält Schreibschutz"}
default {"Ungültige Eingabe"}
}

switch -wildcard("PowerShell"){
"Power*" {echo "'*' steht für 'shell'"}
"*ersh*" {echo "'*' ersetzen 'Pow' und 'ell'"}
"PowerShe??" {echo "Muster passt, weil ?? zwei 'l' ersetzt"}
}
