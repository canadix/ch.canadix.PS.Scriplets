<# arrays 
#>

$myArray = 1,"Hello",3.5,"World"

$myArray = @(1,"Hello",3.5,"World")

$var1,$var2,$var3,$var4=$myArray


<# 	
	arrays range operator (..)  
#>
$myArray = (1..7)

[int[]] $myArray = 12,64,8,64,12

<#
	arrays create empty ()
#>
$myArray = @()

<#
	arrays "hello world"
#>
$myArray = @("Hello World")

<#
	create multi-dimensional array
#>

$myMultiArray = @(
             (1,2,3),
             (40,50,60)
			 (100,200,300)
   )
   
<#
	array += operator
#>

$countries += "India","bern"


$myArray

Return the first element in an array: 

$myArray[0]

Return the seventh element in an array: 

$myArray[6]

Return the 5th element through to the 10th element in an array: 

$myArray[4..9]

Return the last element in an array: 

$myArray[-1]


