:menu
@echo off
cls
echo.
echo Press 1 for Reunion w/ SoundBlaster
echo Press 2 for Reunion w/ Gravis Ultrasound
echo Press 3 to Quit
echo.
choice /C:12 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto GUS
if errorlevel = 1 goto SB

:SB
cd REUNION.ENG
del .\save\SETUP.SPD
copy .\save\SETUP.SB .\save\SETUP.SPD
cd ..
CONFIG -set sbbase=220
CONFIG -set gusbase=240
D:
cls
@call start
goto quit
cls

:GUS
cd REUNION.ENG
del .\save\SETUP.SPD
copy .\save\SETUP.GUS .\save\SETUP.SPD
cd ..
CONFIG -set sbbase=240
CONFIG -set gusbase=220
D:
cls
@call start
goto quit
cls

:quit
exit