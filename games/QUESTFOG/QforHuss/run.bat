:menu
@echo off
cls
echo.
echo Press 1 for Quest for Hussein w/ SoundBlaster
echo Press 2 for Quest for Hussein w/ Gravis Ultrasound
echo Press 3 for Quest for Hussein w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto GUS
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@Quest2
goto quit

:GUS
CONFIG -set "mididevice=default"
cd ULTRSND
ULTRAMID
cd ..
copy .\gus\*.* .\
cls
@Quest2
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cls
@Quest2
goto quit

:quit
exit