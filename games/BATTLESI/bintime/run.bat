:menu
@echo off
cls
echo.
echo Press 1 for Battles in Time w/ SoundBlaster
echo Press 2 for Battles in Time w/ MT-32
echo Press 3 for Battles in Time w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd bit
copy .\sb16\*.* .\
cls
@call bit
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd bit
copy .\mt32\*.* .\
cls
@call bit
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd bit
copy .\sc55\*.* .\
cls
@call bit
goto quit

:quit
exit