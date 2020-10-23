:menu
@echo off
cls
echo.
echo Press 1 for Beyond Castle Wolfenstein 
echo Press 2 for Beyond Castle Wolfenstein Remastered
echo Press 3 to Quit
echo.
echo Press F12 to enable Composite Mode in either version
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
@bcw
goto quit

:MT32
CONFIG -set "mididevice=default"
cd remast
cls
@bcw
goto quit

:quit
exit