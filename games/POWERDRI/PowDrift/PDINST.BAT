echo off
rem
rem	Power Drift secondary install batch file
rem
rem	Copyright (c) 1990 by Interactive Designs
rem	All rights reserved.
rem
rem	09 February 1990
rem
if %3 == __INSTALL_PDRIFT__ goto ok
goto help
:ok
goto program
:noprog
cls
echo.
echo.
echo Please insert program disk in drive %1
pause
:program
if not exist %1pd.exe goto noprog
rem
copy %1*.* %2\PDrift >nul

checkfor dir %2\PDrift\CGA01
if errorlevel 1 goto nextdir1
md %2\PDrift\CGA01
:nextdir1
checkfor dir %2\PDrift\CGA02
if errorlevel 1 goto nextdir2
md %2\PDrift\CGA02
:nextdir2
checkfor dir %2\PDrift\EGA01
if errorlevel 1 goto nextdir3
md %2\PDrift\EGA01
:nextdir3
checkfor dir %2\PDrift\EGA02
if errorlevel 1 goto nextdir4
md %2\PDrift\EGA02
:nextdir4
checkfor dir %2\PDrift\MCGA01
if errorlevel 1 goto nextdir5
md %2\PDrift\MCGA01
:nextdir5
checkfor dir %2\PDrift\MCGA02
if errorlevel 1 goto nextdir6
md %2\PDrift\MCGA02
:nextdir6
goto data1

:nodata1
cls
echo.
echo.
echo Please insert EGA/TGA data disk in drive %1
pause
:data1
if not exist %1D5 goto nodata1
rem
copy %1\EGA01\*.* %2\PDrift\EGA01 >nul
copy %1\EGA02\*.* %2\PDrift\EGA02 >nul
copy %1\*.* %2\PDrift >nul
goto data2

:nodata2
cls
echo.
echo.
echo Please insert CGA data disk in drive %1
pause
:data2
if not exist %1D1 goto nodata2
rem
copy %1\CGA01\*.* %2\PDrift\CGA01 >nul
copy %1\CGA02\*.* %2\PDrift\CGA02 >nul
copy %1\*.* %2\PDrift >nul
goto data3

:nodata3
cls
echo.
echo.
echo Please insert MCGA data disk in drive %1
pause
:data3
if not exist %1D9 goto nodata3
rem
copy %1\MCGA01\*.* %2\PDrift\MCGA01 >nul
copy %1\MCGA02\*.* %2\PDrift\MCGA02 >nul
copy %1\*.* %2\PDrift >nul

cd %2\PDrift
%2
cls
echo.
echo.
echo Type PD to begin playing
echo.

goto exit
:help
echo.
echo Please use the INSTALL batch file on the program disk
echo.
:exit
