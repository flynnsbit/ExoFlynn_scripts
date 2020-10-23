:menu
@echo off
cls
echo.
echo Press 1 for Rebel Moon Original 3D Blaster CD Rom
echo Press 2 for Rebel Moon Later CD Release
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cd REBMOON
cls
@call run
goto quit

:MT32
CD REBMOON2
cls
@call run
goto quit

:quit
exit