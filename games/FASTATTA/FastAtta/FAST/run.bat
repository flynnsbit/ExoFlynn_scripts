:menu
@echo off
cls
echo.
echo Press 1 for Fast Attack High Tech Submarine Warfare w/ SoundBlaster
echo Press 2 for Fast Attack High Tech Submarine Warfare w/ MT-32
echo Press 3 for Fast Attack High Tech Submarine Warfare w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del FAST.INI
copy .\sb16\*.*
cls
@call FAST
goto quit

:mt32
CONFIG -set "mididevice=mt32"
del FAST.INI
copy .\mt32\*.*
cls
@call FAST
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del FAST.INI
copy .\sc55\*.*
cls
@call FAST
goto quit

:quit
exit