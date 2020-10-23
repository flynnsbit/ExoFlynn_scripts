@echo off
if "%0"=="inst" goto newstart
if "%0"=="INST" goto newstart
:start
cls
Echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³    TIME   Install Program  ³
echo ³ Need 14M Hard Disk space.  ³
Echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
mdir C:\TIME /m /f14000000
if errorlevel 2 goto driveB
if errorlevel 1 goto driveA
goto help

:driveA
copy a:install.bat inst.bat
inst A:

:driveB
copy b:install.bat inst.bat
inst B:

:NewStart
cls
echo Loading....
if exist %1*.arj goto arj
%1DEARJ x -vv -jyc %1*.001
goto key

:arj
%1DEARJ x -vv -jyc %1*.arj

:key
goto check

:cont
cls
echo Insert LAST Disk in Drive %1
pause
:check
if not exist %1tcircle.com goto cont

echo Loading....
COPY %1tcircle.com >NUL
if not exist %1ccm.exe goto allDone

:retest
%1vesa_y %1
if errorlevel 1 goto drivebad
goto driveok

:drivebad
cls
echo Do Not Write Protect LAST Disk !!
pause
goto retest

:driveOK
echo %1ccm.exe %1 >in1.tmp
%1vesa_x in1.tmp
cd >in2.tmp
copy /b in1.tmp + in2.tmp in3.bat >nul
call in3.bat
del *.tmp
del in3.bat

:allDone
call setup

:fin
cls
Echo Install Complete !!
ECHO Type Play to start.
goto end

:help
echo 
echo     Target path error, or not enough disk space !!!
echo ÿ
:end
if exist inst.bat del inst.bat