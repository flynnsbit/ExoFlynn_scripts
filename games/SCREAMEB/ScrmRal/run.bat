:menu
@echo off
cls
echo.
echo This game can take upwards of 30 seconds to load on some machines.
echo.
echo Press 1 for Screamer Rally High res 
echo Press 2 for Screamer Rally (3DFX)
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
cd sr
START65H
cd ..
goto menu

:bio2
cls
cd sr
STRT3FX
cd ..
goto menu

:quit
exit