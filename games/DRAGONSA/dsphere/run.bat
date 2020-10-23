:menu
@echo off
cls
echo.
echo Press 1 for Dragonsphere w/ SoundBlaster
echo Press 2 for Dragonsphere w/ MT-32
echo Press 3 for Dragonsphere w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del CONFIG.DRA
copy .\sb16\*.*
cls
@call DRAGON
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del CONFIG.DRA
copy .\mt32\*.*
cls
@call DRAGON
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del CONFIG.DRA
copy .\sc55\*.*
cls
@call DRAGON
goto quit

:quit
exit