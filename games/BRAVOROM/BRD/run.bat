:menu
@echo off
cls
echo.
echo Press 1 for Bravo Romeo Delta: USA Commander
echo Press 2 for Bravo Romeo Delta: Commonwealth Commander
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
usa
goto menu

:bio2
cls
common
goto menu


:quit
exit