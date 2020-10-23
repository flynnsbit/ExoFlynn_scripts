:menu
@echo off
cls
echo.
echo Press 1 for Inherit the Earth: Quest for the Orb w/ SoundBlaster
echo Press 2 for Inherit the Earth: Quest for the Orb w/ Gravis Ultrasound
echo Press 3 for Inherit the Earth: Quest for the Orb w/ MT-32
echo Press 4 for Inherit the Earth: Quest for the Orb w/ Sound Canvas
echo Press 5 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto SC55
if errorlevel = 3 goto MT32
if errorlevel = 2 goto GUS
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@ITE
goto quit

:GUS
CONFIG -set "mididevice=default"
copy .\gus\*.* .\
call gravis
cls
@ITE
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@ITE
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\mt32\*.* .\
cls
@ITE
goto quit

:quit
exit