:menu
@echo off
cls
echo.
echo Press 1 for Starfighter 3000
echo Press 2 for Starfighter 3000 w/ 3DFX
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto 3DFX
if errorlevel = 1 goto NON

:NON
cls
@STAR3000 /no3dfx
goto quit

:3dfx
cls
@STAR3000
goto quit

:quit
exit