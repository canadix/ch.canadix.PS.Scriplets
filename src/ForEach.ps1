<#
ForEach (loop statement) 

Loop through a set of input objects and perform an operation (execute a block of statements) against each. 
Syntax
      ForEach (item In collection) {ScriptBlock}

key
   item         A variable to hold the current item
   collection   A collection of objects e.g. filenames, registry keys, servernames
   ScriptBlock  A block of script to run against each object. 

#>

<#
	ForEach
#>
$trees = @("Alder","Ash","Birch","Cedar","Chestnut","Elm")

  foreach ($tree in $trees) {
    "$tree = " + $tree.length
  }
<#  
Alder = 5
Ash = 3
Birch = 5
Cedar = 5
Chestnut = 8
Elm = 3  
#>

<#
	echo each number unless the number is 2
#>

foreach ($num in 1,2,3,4,5) {
   if ($num -eq 2) { continue } ; $num
  }
<#
	Loop through a collection of .txt files:
#>
  foreach ($file in get-ChildItem *.txt) {
     Echo $file.name
   }
get-service | foreach-object { if ($_.status -eq "stopped") {write-host -f red $_.name $_.status}` else{ write-host -f green $_.name $_.status}} 
get-service -name "vss" | foreach-object { if ($_.Status -eq "stopped") {write-host -F red $_.name $_.Status}` else{ write-host -f green $_.name $_.Status}}





# Simple PowerShell ForEach statement
ForEach ($number in 1,2,3,4,5,6,7,8,9,10) 
{ 
    $number * 13
}


# PowerShell ForEach Example
 Clear-Host
ForEach ($number in 1..10 ) 
{ 
    $number * 13
}


Clear-Host
$NumArray = (1,2,3,4,5,6,7,8,9,10)
ForEach ($number in $NumArray ) { $number * 13}


Clear-Host
$NumArray = (1..10)
ForEach ($number in $numArray ) { $number * 13}
