:menu
@echo off
cls
echo.
echo Press 1 for Crusade (1995) w/ SoundBlaster
echo Press 2 for Crusade (1995) w/ MT-32
echo Press 3 for Crusade (1995) w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del GAME.CFG
copy .\sb16\*.*
cls
@CRUSADE
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del GAME.CFG
copy .\mt32\*.*
cls
@CRUSADE
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del GAME.CFG
copy .\sc55\*.*
cls
@CRUSADE
goto quit

:quit
exit