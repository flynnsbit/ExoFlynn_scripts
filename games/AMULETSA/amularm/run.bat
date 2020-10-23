:menu
@echo off
cls
echo.
echo Press 1 for Amulets and Armor w/ SoundBlaster
echo Press 2 for Amulets and Armor w/ Sound Canvas
echo Press 3 for Amulets and Armor w/ CD Audio
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto CDA
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@call AA
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cls
@call AA
goto quit

:CDA
CONFIG -set "mididevice=mt32"
copy .\cda\*.* .\
cls
@call AA
goto quit

:quit
exit