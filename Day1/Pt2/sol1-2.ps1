$input = Import-Csv ..\input.csv

$fuelsum = 0

foreach ($module in $input)
{
 
 $weight = $module.moduleweight

 while ($true)
 {
   
   $fuel = ([Math]::Floor([decimal]($weight/3)))-2

   if ($fuel -lt 1)
   {
       break;
   }

   $fuelsum += $fuel

   $weight = $fuel

 }
    
}

Write-Host "Fuel sum: $fuelsum"