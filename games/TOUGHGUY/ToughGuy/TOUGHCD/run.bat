:menu
@echo off
cls
echo.
echo Press 1 for Tough Guy w/ SoundBlaster
echo Press 2 for Tough Guy w/ MT-32
echo Press 3 for Tough Guy w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del MUSIC.AD
del MUSIC.ADV
del PANDA.CFG
copy .\sb16\*.*
cls
@TOUGHCD
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del MUSIC.AD
del MUSIC.ADV
del PANDA.CFG
copy .\mt32\*.*
cls
@TOUGHCD
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del MUSIC.AD
del MUSIC.ADV
del PANDA.CFG
copy .\sc55\*.*
cls
@TOUGHCD
goto quit

:quit
exit