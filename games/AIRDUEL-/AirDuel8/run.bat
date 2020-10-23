:menu
@echo off
cls
echo.
echo Press 1 for Air Duel: 80 Years of Dogfighting w/ SoundBlaster
echo Press 2 for Air Duel: 80 Years of Dogfighting w/ MT-32
echo Press 3 for Air Duel: 80 Years of Dogfighting w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del _install
copy .\sb16\*.*
cls
@dog
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del _install
copy .\mt32\*.*
cls
@dog
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del _install
copy .\sc55\*.*
cls
@dog
goto quit

:quit
exit