:menu
@echo off
cls
echo.
echo Press 1 for Frank Thomas Big Hurt Baseball w/ SoundBlaster
echo Press 2 for Frank Thomas Big Hurt Baseball w/ MT-32
echo Press 3 for Frank Thomas Big Hurt Baseball w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd AUDIO
del MDI.INI
copy .\sb16\*.*
cd ..
cls
@BIGHURT
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd AUDIO
del MDI.INI
copy .\mt32\*.*
cd ..
cls
@BIGHURT
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd AUDIO
del MDI.INI
copy .\sc55\*.*
cd ..
cls
@BIGHURT
goto quit

:quit
exit