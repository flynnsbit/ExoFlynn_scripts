:menu
@echo off
cls
echo.
echo Press 1 for Striker '95 w/ SoundBlaster
echo Press 2 for Striker '95 w/ MT-32
echo Press 3 for Striker '95 w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cd SB16
CONFIG -set "mididevice=default"
cd ..
del CONFIG.BIN
copy .\sb16\*.*
cls
@call STRIKER
goto quit

:MT32
cd MT32
CONFIG -set "mididevice=mt32"
cd ..
del CONFIG.BIN
copy .\mt32\*.*
cls
@call STRIKER
goto quit

:SC55
cd SC55
CONFIG -set "mididevice=fluidsynth"
cd ..
del CONFIG.BIN
copy .\sc55\*.*
cls
@call STRIKER
goto quit

:quit
exit