:menu
@echo off
cls
echo.
echo Press 1 for Command HQ w/ Tandy
echo Press 2 for Command HQ w/ SoundBlaster
echo Press 3 for Command HQ w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto SC55

:SB16
CONFIG -set "mididevice=default"
cls
@HQ2 /GE /AA 
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@HQ2 /GE /AR 
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cls
@HQ2 /GE /AT 
goto quit

:quit
exit