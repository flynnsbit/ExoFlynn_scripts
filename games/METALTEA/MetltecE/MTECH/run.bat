:menu
@echo off
cls
echo.
echo Press 1 for Metaltech: Earthsiege w/ SoundBlaster
echo Press 2 for Metaltech: Earthsiege w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del RESOURCE.CFG
copy .\sb16\*.*
cls
@call ES
goto quit

#:MT32
#CONFIG -set "mididevice=mt32"
#del RESOURCE.CFG
#copy .\mt32\*.*
#cls
#@call ES
#goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del RESOURCE.CFG
copy .\sc55\*.*
cls
@call ES
goto quit

:quit
exit