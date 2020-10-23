@echo off
cls
CD \MOGUL
echo.
echo.
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                   บ
echo บ       Installation program for TV MOGUL           บ
echo บ                                                   บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
if exist install\info.bat goto _path
echo.
echo Change to your CD-ROM Drive before executing the Install program!
echo.
goto _exit
:_path
if "%1"=="" goto _template
:_target
if exist %1:\TVMOGUL\nul goto _copy
mkdir %1:\TVMOGUL
echo.
if exist %1:\TVMOGUL\nul goto _copy
if not exist %1:\TVMOGUL\nul echo ** An error occured trying to create %1 **
echo.
goto _template
:_copy
echo .
echo Copying files to %1:\TVMOGUL...
copy install\*.* %1:\TVMOGUL > nul
echo.
echo ** TV MOGUL has been successfully installed **
echo.
pause
%1:
cd \TVMOGUL
reader readme.doc
GOTO _exit
:_template
echo This program will create a TVMOGUL directory on your C: Drive.
echo If you want TV MOGUL installed to a different Drive,
echo break this program (CTRL-C) and use the command:
echo    INSTALL DRIVE 
echo For example, to install the program to drive D: type
echo    INSTALL D
echo.
pause
Install C
:_ok
echo.
echo ** TV MOGUL has been successfully installed **
echo.
pause
C:
cd \TVMOGUL
reader readme.doc
:_exit
echo on
