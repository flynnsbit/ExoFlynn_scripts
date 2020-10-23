:menu
@echo off
cls
echo.
echo Press 1 for the intro & instructions
echo Press 2 for the game
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto go2
if errorlevel = 1 goto go1

:go1
cls
basica intro.bas
goto menu

:go2
cls
basica manor.bas
goto menu

:quit
exit