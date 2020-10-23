goto start
:menu
@echo off
cls
echo.
echo Press 1 to Try Again
echo Press 2 to Quit
echo.
choice /C:12 /N Please Choose:

if errorlevel = 2 goto quit
if errorlevel = 1 goto START

:START
cls
@GALAXY6
goto menu

:quit
exit