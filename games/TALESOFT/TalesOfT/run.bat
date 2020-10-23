:menu
@echo off
cls
echo.
echo Press 1 for Perils of Darkest Africa
echo Press 2 for Revenge of the Moon Goddess
echo Press 3 for Eye of the Inca
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
perils
goto menu

:bio2
cls
revenge
goto menu

:bio3
cls
inca
goto menu

:quit
exit