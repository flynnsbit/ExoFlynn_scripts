:menu
@echo off
cls
echo.
echo Universe is made up of 3 modules.
echo.
echo Construction: Buy Ship & Create Character
echo Flight: Fly ship
echo Starport: If docked, use this module to explore the Starport.
echo.
echo Press 1 to launch the Construction Module
echo Press 2 to launch the Flight Module
echo Press 3 to launch the Stardock Module
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto STAR
if errorlevel = 2 goto FLY
if errorlevel = 1 goto CON

:CON
cls
@CONSTRUC
goto menu

:FLY
cls
@Flight
goto menu

:STAR
cls
@STARPORT
goto menu

:quit
exit