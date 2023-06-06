#Stop Teamviewer
net stop Teamviewer

# check what folder teamviewer is in 

$x64 = Test-Path 'C:\Program Files\Teamviewer' 

$x86 = Test-path 'C:\Program Files (x86)\Teamviewer'


if ("$x64" -eq $true)
{
    cd "C:\Program Files\Teamviewer" 
    .\uninstall.exe /S 
    Write-output "Teamviewer Uninstalled under the Program Files Folder"
}

elseif("$x86" -eq $true)

{
    cd "C:\Program Files (x86)\Teamviewer"
    .\uninstall.exe /S 
    Write-output "Teamviewer Uninstalled under the Program Files (x86) Folder"
}

else 
{
    write-output "Teamviewer not on machine"
}