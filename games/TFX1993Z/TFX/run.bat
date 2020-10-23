:menu
@echo off
cls
echo.
echo Press 1 for TFX w/ SoundBlaster + CD music
echo Press 2 for TFX w/ MT-32
echo Press 3 for TFX w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd TFX
del TFX.CFG
copy .\sb16\*.*
cls
@call TFX
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd TFX
del TFX.CFG
copy .\mt32\*.*
cls
@call TFX
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd TFX
del TFX.CFG
copy .\sc55\*.*
cls
@call TFX
goto quit

:quit
exit