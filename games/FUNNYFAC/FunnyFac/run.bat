:menu
@echo off
cls
echo.
echo Press 1 for Funny Face v1
echo Press 2 for Funny Face v2
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto v2
if errorlevel = 1 goto v1

:v1
cls
FF_SW
goto quit

:v2
cls
FF2
goto quit

:quit