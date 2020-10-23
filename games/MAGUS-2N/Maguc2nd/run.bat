:menu
@echo off
cls
echo.
echo Press 1 for Magus: 2nd Edition
echo Press 2 for Magus: 3rd Edition
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto 3rd
if errorlevel = 1 goto 2nd

:2nd
cd 2nd
cls
@magus
goto quit

:3rd
cd 3rd
cls
@magus
goto quit

:quit
exit