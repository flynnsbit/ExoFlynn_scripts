:menu
@echo off
cls
echo.
echo Press 1 for VR Soccer '96
echo Press 2 for VR Soccer '96 3DFX
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
VRSCCR96
goto quit

:bio2
cls
call vrsoccer
goto quit

:quit
exit