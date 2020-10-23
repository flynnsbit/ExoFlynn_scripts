:menu
@echo off
cls
echo.
echo Press 1 for Blue Force w/ SoundBlaster
echo Press 2 for Blue Force w/ MT-32
echo Press 3 for Blue Force w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del TSAGE.CFG
copy .\sb16\*.*
cls
@call BLUE
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del TSAGE.CFG
copy .\mt32\*.*
cls
@call BLUE
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del TSAGE.CFG
copy .\sc55\*.*
cls
@call BLUE
goto quit

:quit
exit