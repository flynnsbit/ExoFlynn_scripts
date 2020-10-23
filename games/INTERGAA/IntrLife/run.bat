:menu
@echo off
cls
echo.
echo Press 1 for Part One: Universe
echo Press 2 for Part Two: Earthfly
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
play universe
goto menu

:bio2
cls
play earthfly
goto menu

:quit
exit