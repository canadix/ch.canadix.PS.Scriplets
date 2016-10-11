try {
	$test = 1+1
} catch {
	$_.Exception.Message
	Log-warning $fn "[WARNING] trapped when sending mail.`n$msg"
	throw $_
}

$ErrorActionPreference = "Stop"
try {
    get-content "c:\GarbageFileName.txt" -ErrorAction stop
}
catch {
    write-output "in catch, I want it to stop now"
    break
}
write-output "try-catch finished, script is continuing"
