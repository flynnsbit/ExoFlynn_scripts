:menu
@echo off
cls
echo.
echo Press 1 for Thera w/ SoundBlaster
echo Press 2 for Thera w/ Gravis Ultrasound
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
@Game
goto quit

:GUS
CONFIG -set "mididevice=default"
copy .\gus\*.* .\
cls
@Game
goto quit

:quit
exit