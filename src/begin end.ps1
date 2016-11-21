﻿BEGIN {
$errors = 0
$warnings = 0
$info = 0
}
Process {

 

Switch -Wildcard ($_.entrytype) {
   "err*" {$errors++}
   "warn*" {$warnings++}
   "info*" {$info++}
    default {}
           }# End of switch block
       }# End of Process block




END {
$test = Get-Eventlog -LogName System
Clear-Host
"The Application log contains " + $errors + " error messages."
"The Application log contains " + $warnings + " warning messages."
"The Application log contains " + $info + " information messages. `n"
Get-Date
          } # End block