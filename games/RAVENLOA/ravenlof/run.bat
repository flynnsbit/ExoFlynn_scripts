:menu
@echo off
cls
echo.
echo Press 1 for Ravenloft: Strahd's Possession w/ Sound Blaster
echo Press 2 for Ravenloft: Strahd's Possession w/ MT-32
echo Press 3 for Ravenloft: Strahd's Possession w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del SOUND.CFG
copy .\sb16\*.*
cls
@R
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del SOUND.CFG
copy .\mt32\*.*
cls
@R
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del SOUND.CFG
copy .\sc55\*.*
cls
@R
goto quit

:quit
exit