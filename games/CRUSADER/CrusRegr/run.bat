:menu
@echo off
cls
echo.
echo Press 1 for Crusader: No Regret w/ SoundBlaster
echo Press 2 for Crusader: No Regret w/ Gravis Ultrasound
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto GUS
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd regret
copy .\sb16\*.* .\
cls
@REGRET
goto quit

:GUS
cd ultrasnd
ultramid
cd ..
CONFIG -set "mididevice=default"
cd regret
copy .\gus\*.* .\
cls
@regret
goto quit

:quit
exit