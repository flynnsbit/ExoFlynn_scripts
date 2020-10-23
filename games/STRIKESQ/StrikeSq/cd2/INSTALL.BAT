@echo off
cd \strksqd
echo.
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³                                                   ³
echo ³    Installation program for Strike Squad          ³
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
if exist %1:\STRKSQD\NUL goto _copy
mkdir %1:\STRKSQD
echo.
if exist %1:\STRKSQD\NUL goto _copy
if not exist %1:\STRKSQD\NUL echo ** An error occured trying to create %1 **
echo.
goto _template

:_copy
echo .
echo Copying files to %1:\STRKSQD...
copy install\*.* %1:\STRKSQD > nul

MD %1:\STRKSQD\ENTSPEAK > nul

echo.
echo ** Strike Squad has been successfully installed **
echo.
pause
%1:
cd \STRKSQD
reader readme.doc
GOTO _EXIT

:_template
echo This program will create an STRKSQD directory on your drive C:
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
echo ** Strike Squad has been successfully installed **
echo.
pause
cd %1:\STRKSQD
reader readme.doc
:_exit
echo on

