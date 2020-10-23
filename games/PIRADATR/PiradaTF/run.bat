:menu
@echo off
cls
echo.
echo Press 1 for Pirada I: The Fearless
echo Press 2 for Pirada II: The Powerful
echo Press 3 for Pirada III: The Invincible
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
PIRADA1
goto menu

:bio2
cls
PIRADA2
goto menu

:bio3
cls
PIRADA3
goto menu

:quit
exit