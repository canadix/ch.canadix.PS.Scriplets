<#
Syntax
      [:Loop_label] Do
      {
         command_block
      } while (condition)

or

      [:Loop_label] Do
      {
         command_block
      } until (condition)

Key

   condition      If this evaluates to TRUE the loop {command_block} runs.
                  when the loop has run once the condition is evaluated again

   command_block  Commands, separated by commas, to run each time the loop repeats.

   :Loop_label    An optional label than can be used to break or continue.
#>




<#
	count for 10
#>

PS> Do { $val++ ; Write-Host $val } while($val -ne 10) 
<#
	You can use carriage returns instead of semi-colons:
#>

 PS> Do { $val++ 
          Write-Host $val
        } while($val -ne 10) 
