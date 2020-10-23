:menu
@echo off
cls
echo.
echo Press 1 for Little People Farm w/ Tandy
echo Press 2 for Little People Farm w/ SoundBlaster
echo Press 3 for Little People Farm w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@FARM
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@FARM
goto quit

:TANDY
CONFIG -set "mididevice=fluidsynth"
copy .\Tandy\*.* .\
cls
@FARM
goto quit

:quit
exit