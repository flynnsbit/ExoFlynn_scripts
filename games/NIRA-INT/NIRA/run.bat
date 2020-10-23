:menu
@echo off
cls
echo.
echo Press 1 for NIRA Intense Import Drag Racing
echo Press 2 for NIRA Intense Import Drag Racing (3DFX)
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto 3DFX
if errorlevel = 1 goto REG

:REG
cls
@software
goto quit

:3DFX
cls
@Nira
goto quit

:quit
exit