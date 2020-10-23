:menu
@echo off
cls
echo.
echo Press 1 for Buck Rogers: Countdown to Doomsday w/ Tandy
echo Press 2 for Buck Rogers: Countdown to Doomsday w/ Adlib
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto ADLIB
if errorlevel = 1 goto TANDY

:TANDY
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=none"
copy .\tandy\*.* .\
cls
@start
goto quit

:ADLIB
CONFIG -set "mididevice=default"
copy .\adlib\*.* .\
cls
@start
goto quit

:quit
exit