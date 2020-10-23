:menu
@echo off
cls
echo.
echo Press 1 for Miami Vice w/ Game Blaster
echo Press 2 for Miami Vice w/ SoundBlaster
echo Press 3 for Miami Vice w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto GB

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@call mv
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@call mv
goto quit

:GB
CONFIG -set "mididevice=fluidsynth"
CONFIG -set "sbtype=gb"
copy .\gb\*.* .\
cls
@call mv
goto quit

:quit
exit