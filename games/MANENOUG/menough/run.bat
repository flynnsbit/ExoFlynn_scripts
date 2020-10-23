:menu
@echo off
cls
echo.
echo Press 1 for Man Enough w/ SoundBlaster
echo Press 2 for Man Enough w/ MT-32
echo Press 3 for Man Enough w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd man
copy .\sb16\*.* .\
cls
@MAN
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd man
copy .\mt32\*.* .\
cls
@MAN
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd man
copy .\sc55\*.* .\
cls
@MAN
goto quit

:quit
exit