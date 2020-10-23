:menu
@echo off
cls
echo.
echo Press 1 for Space War
echo Press 2 for Moon Lander
echo Press 3 for Meteor Shower
echo Press 4 for Space Zombies
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto bio4
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
SWC.EXE
goto menu

:bio2
MOON
goto menu

:bio3
METEOR
goto menu

:bio4
ZOMBIES
goto menu

:quit
exit