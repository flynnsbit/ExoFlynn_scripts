:menu
@echo off
cls
echo.
echo Press 1 for Beez w/ SoundBlaster
echo Press 2 for Beez w/ Gravis Ultrasound
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto GUS
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@BEEZ
goto quit

:GUS
CONFIG -set "mididevice=default"
copy .\gus\*.* .\
cd ultrasnd
ultramid
cd ..
cls
@BEEZ
goto quit

:quit
exit