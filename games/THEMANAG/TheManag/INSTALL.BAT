echo off
cls
echo INSTALLATION PROGRAMM       T H E  M A N A G E R
echo �
echo �
echo �
echo INSERT THE MANAGER DISK1 IN YOUR DISK DRIVE (E:G: A)
echo AND TYPE: INSTALL [SOURCE DRIVE]: [DESTINATION DRIVE]:
echo �
echo                         e.g. INSTALL A: C:
echo                              install from Drive A to harddisk C
echo �
echo �
echo PRESS ANY KEY TO START THE INSTALLATION 
echo �
echo �
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
echo �
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
echo �
echo �
echo PRESS ANY KEY TO START THE MANAGER!�
echo �
echo �
pause
%2
bmp
goto ganzende
:end
cls
echo YOU HAVE MAKE A MISTAKE!
echo �
echo TRY AGAIN to type: INSTALL [SOURCE DRIVE]: [DESTINATION DRIVE]:     
echo �
echo                          e.g. INSTALL A: C:
echo �
echo �
echo
:ganzende
