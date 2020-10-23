@echo off

set |find "windir" /c >nul
if errorlevel 1 goto CONFIGSTART
echo You must exit Windows and run CONFIG.BAT from DOS.
pause
goto THEEND

:CONFIGSTART
cls
mode CO80
echo Loading 3-D Table Sports configuration programs ...

NETSETUP

set ATMPX=%DOS4G%
set DOS4G=

SNDSETUP.EXE

set DOS4G=%ATMPX%
set ATMPX=

UVCONFIG

set MMTSPATH=
cls
if exist HMISET.CFG goto HASSOUND
echo Sound configuration was not completed.
echo The program will still run, but without any sound.
echo.
if not exist UNIVBE.DRV goto HASSOUND
goto AGAIN

:HASSOUND
if exist UNIVBE.DRV goto HASVBE
echo Integrated UniVBE graphics configuration not completed.
echo The program will try to use an existing TSR/ROM VESA BIOS (if available).
set |find "windir" /c >nul
if errorlevel 1 goto AGAIN
echo For best results exit Windows and run CONFIG.BAT from DOS.
pause
goto HASVBE

:AGAIN
echo You may want to run CONFIG.BAT again

:HASVBE
echo.
echo Type 'TS' to run 3-D Table Sports.
echo >config.tst Config

:THEEND
