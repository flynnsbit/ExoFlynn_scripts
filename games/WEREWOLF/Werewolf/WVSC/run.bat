:menu
@echo off
cls
echo.
echo Press 1 for Werewolf vs. Comanche w/ SoundBlaster
echo Press 2 for Werewolf vs. Comanche w/ MT-32
echo Press 3 for Werewolf vs. Comanche w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del GAMESET.CFG
copy .\sb16\*.*
cls
@WEREWOLF
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del GAMESET.CFG
copy .\mt32\*.*
cls
@WEREWOLF
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del GAMESET.CFG
copy .\sc55\*.*
cls
@WEREWOLF
goto quit

:quit
exit