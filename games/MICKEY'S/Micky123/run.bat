:menu
@echo off
cls
echo.
echo Press 1 for Mickey's 123's: The Big Surprise Party
echo Press 2 for Mickey's 123's: The Big Surprise Party Enhanced
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto ENHA
if errorlevel = 1 goto ORIG

:ORIG
cd original
cls
@mickey
goto quit

:ENHA
cd enhanced
cls
@call MICKEY
goto quit

:quit
exit