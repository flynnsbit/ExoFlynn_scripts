:menu
@echo off
cls
echo.
echo Press 1 for Furcol
echo Press 2 for Furcol (3DFX)
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cls
@furcol
goto quit

:MT32
cls
@call FUR3DFX
goto quit

:quit
exit