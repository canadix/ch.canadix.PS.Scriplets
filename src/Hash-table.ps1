<#
	Hash Table
#>

$array_name = @{}

array_name = @{key1 = item1; key2 = item2;}

$usa_states=@{ CA="California";
  "NY" = "New York";
  "IL" = "Illinois";
  "NH" = "New Hampshire"}
  
$usa_states.add("GA","Goregia")

$usa_states.Set_Item("GA", "Georgia")