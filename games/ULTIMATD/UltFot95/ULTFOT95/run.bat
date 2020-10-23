:menu
@echo off
cls
echo.
echo Press 1 for Ultimate Football '95 w/ SoundBlaster
echo Press 2 for Ultimate Football '95 w/ MT-32
echo Press 3 for Ultimate Football '95 w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del CONFIG.FB
copy .\sb16\*.*
cls
@FOOTBALL
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del CONFIG.FB
copy .\mt32\*.*
cls
@FOOTBALL
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del CONFIG.FB
copy .\sc55\*.*
cls
@FOOTBALL
goto quit

:quit
exit