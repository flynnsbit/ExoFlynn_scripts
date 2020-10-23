:menu
@echo off
cls
echo.
echo Press 1 for Capatin Bible in the Dome of Darkness w/ SoundBlaster
echo Press 2 for Capatin Bible in the Dome of Darkness w/ MT-32
echo Press 3 for Capatin Bible in the Dome of Darkness w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del SOUND.1
del SOUND.2
del SOUND.3
del SOUND.4
copy .\sb16\*.*
cls
@CB
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del SOUND.1
del SOUND.2
del SOUND.3
del SOUND.4
copy .\mt32\*.*
cls
@CB
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del SOUND.1
del SOUND.2
del SOUND.3
del SOUND.4
copy .\sc55\*.*
cls
@CB
goto quit

:quit
exit