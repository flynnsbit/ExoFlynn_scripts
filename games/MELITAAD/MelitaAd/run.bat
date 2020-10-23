:menu
@echo off
cls
echo.
echo Press 1 for Melita Adventure Part 1
echo Press 2 for Melita Adventure Part 2
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
MELITA1
goto menu

:bio2
cls
MELITA2
goto menu

:quit
exit