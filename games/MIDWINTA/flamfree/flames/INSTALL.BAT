@echo off
if "%1"=="" goto insterr
if "%2"=="" goto insterr

if %1==a: goto doinst1
if %1==b: goto doinst1
if %1==A: goto doinst1
if %1==B: goto doinst1

:insterr
echo Incorrect Parameters Supplied !!!!
echo Correct usage - INSTALL {source drive:} {destination drive:\path}
goto instx

:doinst1
setdrive %2

if errorlevel 2 goto insterr

if exist flames\flames.exe goto no_install

copy %1\inst2.bat
inst2.bat %1

:no_install
echo Flames of Freedom already Installed !!!!
:instx
