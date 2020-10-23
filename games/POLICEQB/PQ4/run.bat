:menu
@echo off
cls
echo.
echo Press 1 for Police Quest 4: Open Season w/ SoundBlaster
echo Press 2 for Police Quest 4: Open Season w/ MT32
echo Press 3 for Police Quest 4: Open Season w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del RESOURCE.PQ4
copy .\sb16\*.*
cls
@SIERRA C:resource.pq4
goto quit
cls

:MT32
CONFIG -set "mididevice=mt32"
del RESOURCE.PQ4
copy .\mt32\*.*
cls
@SIERRA C:resource.pq4
goto quit
cls

:SC55
CONFIG -set "mididevice=fluidsynth"
del RESOURCE.PQ4
copy .\sc55\*.*
cls
@SIERRA C:resource.pq4
goto quit
cls

:quit
exit