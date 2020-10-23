:menu
@echo off
cls
echo.
echo Press 1 for OverHeat 
echo Press 2 for OverHeat Hi-Res
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto HI
if errorlevel = 1 goto REG

:REG
cd HEATS
cls
@call HEATS
goto quit

:HI
cd HEATSH
cls
@call HEATS
goto quit

:quit
exit