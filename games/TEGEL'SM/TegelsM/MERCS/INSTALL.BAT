@echo off
cd \mercs
echo.
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³                                                   ³
echo ³    Installation program for Tegel's Mercenaries   ³
echo ³                                                   ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo.

if exist install\info.bat goto _path
echo.
echo Change to your CD-ROM DRIVE before executing the Install program!
echo.
goto _exit

:_path
if "%1"=="" goto _template

:_target
if exist %1:\mercs\NUL goto _copy
mkdir %1:\mercs
echo.
if exist %1:\mercs\NUL goto _copy
if not exist %1:\mercs\NUL echo ** An error occured trying to create %1:\mercs **
echo.
goto _template

:_copy
echo .
echo Copying files to %1:\mercs ...
copy install\*.* %1:\mercs > nul
echo.
echo ** Tegel's Mercenaries has been successfully installed **
echo.
pause
%1:
cd \mercs
MD %1:\mercs\entspeak > nul
SETUP
reader readme.doc
GOTO _EXIT

:_template
echo This program will create a MERCS directory on your drive C:
echo If you want the program installed to a different drive,
echo break this program (CTRL-C) and use the command:
echo    INSTALL DRIVE
echo For example, to install the program to drive D: type
echo    INSTALL D
echo.
pause
Install C

:_ok
echo.
echo ** Tegel's Mercenaries has been successfully installed **
echo.
pause
%1
cd \mercs
MD %1:\mercs\entspeak > nul
SETUP
reader readme.doc

:_exit
echo on
