:menu
@echo off
cls
echo.
echo Press 1 for Strike Aces w/ Adlib
echo Press 2 for Strike Aces w/ CMS
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
@STRIKE
goto quit

:MT32
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
cls
@STRIKE
goto quit

:quit
exit