$input = Import-Csv ..\input.csv

$fuelsum = 0

foreach ($module in $input)
{
 
 $weight = $module.moduleweight

 $fuel = ([Math]::Floor([decimal]($weight/3)))-2

 $fuelsum += $fuel
    
}

Write-Host "Fuel sum: $fuelsum"