$CSV1 = $null
$CSV2 = $null

$CSV1 = Import-Csv -Path '' 
$CSV2 = Import-Csv -Path ''

$dif = Compare-Object -ReferenceObject $CSV1 -DifferenceObject $CSV2 -Property <propertyname>

foreach($y in $dif){
   if($y.SideIndicator -eq "=>"){
    write-output $y.name "Is present in the difference but not in reference."
   }
   if($y.SideIndicator -eq "<="){
    write-output $y.Name "Is present in reference but not in difference"
   }

}
