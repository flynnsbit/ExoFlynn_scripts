:menu
@echo off
cls
echo.
echo Press 1 for The Monuments of Mars Vol. 1 - First Contact
echo Press 2 for The Monuments of Mars Vol. 2 - The Pyramid
echo Press 3 for The Monuments of Mars Vol. 3 - The Fortress
echo Press 4 for The Monuments of Mars Vol. 4 - The Face
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto mm4
if errorlevel = 3 goto mm3
if errorlevel = 2 goto mm2
if errorlevel = 1 goto mm1

:mm1
cls
mars1
goto menu

:mm2
cls
mars2
goto menu

:mm3
cls
mars3
goto menu

:mm4
cls
mars4
goto menu

:quit
exit