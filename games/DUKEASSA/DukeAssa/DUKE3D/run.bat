:menu
@echo off
cls
echo.
echo Press 1 for Duke Assault w/ Gravis Ultrasound
echo Press 2 for Duke Assault w/ SoundBlaster
echo Press 3 for Duke Assault w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto SB16
if errorlevel = 1 goto GUS

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
D:
@DA
goto quit

:GUS
CONFIG -set "mididevice=default"
copy .\gus\*.* .\
cls
D:
@DA
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cls
D:
@DA
goto quit

:quit
exit