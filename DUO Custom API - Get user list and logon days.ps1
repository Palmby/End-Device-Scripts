#note: Must have the custom DUO module installed on machine to run
#instructions here: https://github.com/mbegan/Duo-PSModule#readme

import-module Duo

$users = duogetuser 


foreach ($user in $users)
{
   $u = $user.realname
   $username = $user.username
   
   $unixtime = $user.last_login
   
   $date = (get-date 01.01.1970)+([System.TimeSpan]::fromseconds($unixtime))
   
  

   $prop = @{

   "name" = $u 
   "username" = $username
   "Date" = $date

   }

   $obj = new-object PSObject -property $prop

   $obj | select 'name', 'username', 'Date' | sort name|  export-csv C:\temp\duolist.csv -NoTypeInformation -Append

        
}