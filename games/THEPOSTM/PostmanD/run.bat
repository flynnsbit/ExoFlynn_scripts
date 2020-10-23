:menu
@echo off
cls
echo.
echo Press 1 for The Postman Only Dies Once w/ SoundBlaster
echo Press 2 for The Postman Only Dies Once w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del ACSETUP.CFG
copy .\sb16\*.*
cls
@POST
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del ACSETUP.CFG
copy .\sc55\*.*
cls
@POST
goto quit

:quit
exit