:menu
@echo off
cls
echo.
echo Press 1 for Burnout Pro Drag Racing: Player's Choice Edition
echo Press 2 for Burnout Pro Drag Racing: Player's Choice Edition (3DFX)
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
cd PRO_DRAG
PCE
cd ..
goto menu

:bio2
cls
cd PRO_DR3D
PCE
cd ..
goto menu

:quit
exit