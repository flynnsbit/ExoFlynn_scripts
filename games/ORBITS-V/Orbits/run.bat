:menu
@echo off
cls
echo.
echo Press 1 for Orbits v2.1
echo Press 2 for Orbits v3.0
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto version3
if errorlevel = 1 goto version2

:version2
cd v2
cls
@orbits
goto quit

:version3
cd v3
cls
@orbits3
goto quit

:quit
exit