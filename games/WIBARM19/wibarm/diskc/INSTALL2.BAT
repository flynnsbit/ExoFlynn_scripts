echo off
del %1\wibarm\install.bat
echo  
echo  
echo Replace Wibarm Disk 1 with Wibarm Disk 2
pause
cls
echo  
echo  
echo Copying Wibarm Disk 2 files to %1\WIBARM\WIBARM2
md %1\wibarm\wibarm2
copy *.* %1\wibarm\wibarm2>nul
cls
echo  
echo  
echo Wibarm has been installed!
