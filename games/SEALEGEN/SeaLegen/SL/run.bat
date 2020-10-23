:menu
@echo off
cls
echo.
echo Press 1 for Sea Legends w/ SoundBlaster
echo Press 2 for Sea Legends w/ MT-32
echo Press 3 for Sea Legends w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del SL.COM
copy .\sb16\*.*
cls
@SL
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del SL.COM
copy .\mt32\*.*
cls
@SL
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del SL.COM
copy .\sc55\*.*
cls
@SL
goto quit

:quit
exit