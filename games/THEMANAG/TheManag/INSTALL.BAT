echo off
cls
echo INSTALLATION PROGRAMM       T H E  M A N A G E R
echo ÿ
echo ÿ
echo ÿ
echo INSERT THE MANAGER DISK1 IN YOUR DISK DRIVE (E:G: A)
echo AND TYPE: INSTALL [SOURCE DRIVE]: [DESTINATION DRIVE]:
echo ÿ
echo                         e.g. INSTALL A: C:
echo                              install from Drive A to harddisk C
echo ÿ
echo ÿ
echo PRESS ANY KEY TO START THE INSTALLATION 
echo ÿ
echo ÿ
pause
if "%1"=="" goto end
%1
cls
%2
mkdir bmp
cd bmp
%1
disk1 -y %2
cls
echo PLEASE INSERT DISK 2 in DRIVE %1 
echo ÿ
pause
disk2 -y %2
cls
echo PLEASE INSERT DISK 3 in DRIVE %1
echo
pause
disk3 -y %2
cls
echo INSTALLATION COMPLETE!
echo 
echo ÿ
echo ÿ
echo PRESS ANY KEY TO START THE MANAGER!ÿ
echo ÿ
echo ÿ
pause
%2
bmp
goto ganzende
:end
cls
echo YOU HAVE MAKE A MISTAKE!
echo ÿ
echo TRY AGAIN to type: INSTALL [SOURCE DRIVE]: [DESTINATION DRIVE]:     
echo ÿ
echo                          e.g. INSTALL A: C:
echo ÿ
echo ÿ
echo
:ganzende
