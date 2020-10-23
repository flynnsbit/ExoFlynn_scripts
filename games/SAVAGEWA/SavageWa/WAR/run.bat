:menu
@echo off
cls
echo.
echo Press 1 for Savage Warriors w/ SoundBlaster
echo Press 2 for Savage Warriors w/ MT-32
echo Press 3 for Savage Warriors w/ CD Audio
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@WAR
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@WAR
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\cda\*.* .\
cls
@WAR
goto quit

:quit
exit