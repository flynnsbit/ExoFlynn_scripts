:menu
@echo off
cls
echo.
echo Press 1 for Airball w/ Game Blaster
echo Press 2 for Airball w/ Innova
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto INV
if errorlevel = 1 goto CMS

:INV
CONFIG -set "mididevice=default"
cls
@AIRBALL /INV
goto quit

:CMS
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
cls
@AIRBALL /cms
goto quit

:quit
exit