$adcomp = import-csv 'C:\users\Kaleb Palmby\Downloads\computerlist.csv'
$ncentral = import-csv 'C:\users\Kaleb Palmby\Downloads\lan.csv'
compare-object $adcomp $ncentral -Property name -IncludeEqual | export-csv C:\posh\comparative.csv

