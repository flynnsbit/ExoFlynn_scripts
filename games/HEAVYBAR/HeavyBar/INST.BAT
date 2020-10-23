echo off
rem
rem	Heavy Barrel-PC secondary install file
rem
rem	Copyright (c) 1988 by Quicksilver Software, Inc.
rem	All rights reserved.
rem
rem	written by David Steffen. 89/05/12 15:35:45
rem
if "%3" == "/u" goto uninstall
if "%3" == "/U" goto uninstall
if "%3" == "__INSTALL_HB__" goto ok
goto help
:uninstall
%1proin %1 %2 /u
if errorlevel 1 goto exit
del %2HB.exe
del %2\dataeast\HB.bat
echo.
echo Heavy Barrel successfully uninstalled from %2
echo You may now delete the rest of the files in %2\dataeast\hb
echo.
goto exit
:ok
goto program
:noprog
cls
echo.
echo.
echo Please insert program disk in drive %1
pause
:program
if exist %2HB.exe goto AlreadyHere
if not exist %1HB.exe goto noprog
copy %1hb_prog.exe %2 >nul
%1proin %1 %2
if errorlevel 1 goto installerror
copy %1hb.exe %2 >nul
copy %1HB.bat %2\dataeast >nul
goto data

:installerror
del %2hb_prog.exe >nul
cd %2\
rd %2\dataeast\hb >nul
rd %2\dataeast >nul
goto exit

:nodata
cls
echo.
echo.
echo Please insert data disk in drive %1
pause
:data
if not exist %1sprites.ega goto nodata
copy %1SPRITES.CGA %2 >nul
copy %1SPRITES.EGA %2 >nul
copy %1LEVEL0.BIN %2 >nul
copy %1LEVEL1.BIN %2 >nul
copy %1LEVEL2.BIN %2 >nul
copy %1LEVEL3.BIN %2 >nul
copy %1LEVEL4.BIN %2 >nul
copy %1LEVEL5.BIN %2 >nul
copy %1LEVEL6.BIN %2 >nul
copy %1LEVEL7.BIN %2 >nul
copy %1SCRIPT.BIN %2 >nul
cd %2\dataeast
%2
cls
echo.
echo Thank you for purchasing Heavy Barrel
echo and for playing DATA EAST!!
echo.

goto exit

:AlreadyHere
cls
echo.
echo Heavy Barrel is already installed on %2
echo.

goto exit

:help
echo.
echo Please use the install batch file on the distribution disk
echo.
:exit
