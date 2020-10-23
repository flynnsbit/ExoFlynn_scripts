:menu
@echo off
cls
echo.
echo Press 1 for F-15 Strike Eagle II (Deluxe Edition) w/ Tandy
echo Press 2 for F-15 Strike Eagle II (Deluxe Edition) w/ Adlib
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto adlib
if errorlevel = 1 goto tandy

:Tandy
CONFIG -set "mididevice=default"
cd f15
cls
@f15 /AT /D2 /GM /NJ
goto quit

:Adlib
CONFIG -set "mididevice=default"
cd f15
cls
@f15 /AA /D2 /GM /NJ
goto quit

:quit
exit