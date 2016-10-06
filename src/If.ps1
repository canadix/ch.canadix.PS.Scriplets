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


