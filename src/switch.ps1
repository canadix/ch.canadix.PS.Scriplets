<#Brief Syntax

      Switch ($item)
      {
       value { expression }
       value { expression }
      }

Full Syntax

      Switch [ -regex | -wildcard | -exact ] [-casesensitive ] ( pipeline )
      { 
        "string"|number|variable| { expression } { statementlist }
        default { statementlist } 
      }

      Switch [ -regex | -wildcard | -exact ] [-casesensitive ] -file filename
      { 
        "string" | number | variable | { expression } { statementlist }
        default { statementlist } 
      }
Key

   -regex       Treat the match clause, if a string, as a Regex.

   -wildcard    Treat the match clause, if a string, as a wildcard string
                Wildcard characters:
                    ?   = Any single unspecified character.
                    *   = Zero or more unspecified chars.
                  [a-b] = Any character in the range a-b
                  [ab]  = The specified characters.
                The wildcard match is case in-sensitive 

   -exact       Match strings exactly (disable wildcards)

 -casesensitive Modify the match clause, if a string, to be case sensitive

   -file        Take input from a file (or representative)
#>



<#
	Switch 
#>

switch(Read-Host "Wählen Sie einen Menüpunkt")

{
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

