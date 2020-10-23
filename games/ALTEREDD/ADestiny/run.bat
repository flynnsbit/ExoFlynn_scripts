:menu
@echo off
cls
echo.
echo Press 1 for Altered Destiny w/ Game Blaster
echo Press 2 for Altered Destiny w/ SoundBlaster
echo Press 3 for Altered Destiny w/ MT-32
echo Press 4 for Altered Destiny w/ Sound Canvas
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto SC55
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto GB

:SB16
CONFIG -set "mididevice=default"
cls
@Exe MCGA Mouse AdLib
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@Exe MCGA Mouse MIDI B
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cls
@Exe MCGA Mouse MIDI A 
goto quit

:GB
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=GB"
cls
@Exe MCGA Mouse CMS
goto quit

:quit
exit