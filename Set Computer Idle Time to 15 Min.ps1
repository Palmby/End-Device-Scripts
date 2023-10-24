#Set Idle time to 15 min
$registrypath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$Name = "EnableLUA"
$Value = "900"

try 
{
    Get-ItemProperty -path $registrypath -Name $Name 
    $attempt =  $true
}

catch 
{
    $attempt = $false 
}

if ($attempt -eq $true)
{
    return 1
}


else
{
    set-ItemProperty -path $registrypath -Name $Name -Value $Value
}


