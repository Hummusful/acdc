# Set Src and Destination path 

$srv = "\\shared-directory\Lapsus\AdmPwd.dll"
$dest= "c:\windows\system32"

# Copy the file to the WorkStation

Copy-Item -Path $srv -Destination $dest -Force

#Register The Dll File
Start-Process -FilePath "C:\Windows\System32\regsvr32.exe" -ArgumentList "/s $dest\admpwd.dll" -Wait