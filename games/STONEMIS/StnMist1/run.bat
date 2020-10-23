:menu
@echo off
cls
echo.
echo Press 1 to Create a Character
echo Press 2 to Play Stone Mist 1
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto PLAY
if errorlevel = 1 goto CREA

:CREA
cls
@call CREATE
goto menu

:PLAY

cls
@call RUNMIST
pause
goto menu

:quit
exit