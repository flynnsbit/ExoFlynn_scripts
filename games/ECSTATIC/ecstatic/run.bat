:menu
@echo off
cls
echo.
echo Press 1 for Ecstatica w/ SoundBlaster
echo Press 2 for Ecstatica w/ MT-32
echo Press 3 for Ecstatica w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del E_CONFIG
copy .\sb16\*.*
cls
@call ECSTATIC
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del E_CONFIG
copy .\mt32\*.*
cls
@call ECSTATIC
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del E_CONFIG
copy .\sc55\*.*
cls
@call ECSTATIC
goto quit

:quit
exit