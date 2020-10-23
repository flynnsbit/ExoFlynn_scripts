:menu
@echo off
cls
echo.
echo Press 1 for MicroLeague Baseball IV 
echo Press 2 for MicroLeague Baseball IV General Manager-Owner
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cls
@MLB4
goto quit

:MT32
cls
@MLBGMO
goto quit

:quit
exit