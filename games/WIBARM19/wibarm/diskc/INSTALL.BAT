echo off
cls
md %1\wibarm>nul
echo ÿ
echo ÿ
echo Copying Wibarm Disk 1 files to %1\WIBARM
copy *.* %1\wibarm>nul
cls
%1\wibarm\install2 %1
