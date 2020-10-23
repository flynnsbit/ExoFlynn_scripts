:menu
@echo off
cls
echo.
echo Press 1 for Les Manley in Search for the King w/ Tandy
echo Press 2 for Les Manley in Search for the King w/ CMS
echo Press 3 for Les Manley in Search for the King w/ SoundBlaster
echo Press 4 for Les Manley in Search for the King w/ General Midi
echo Press 5 for Les Manley in Search for the King w/ MT-32
echo Press 6 to Quit
echo.
choice /C:123456 /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 5 goto MT32
if errorlevel = 4 goto SC55
if errorlevel = 3 goto SB16
if errorlevel = 2 goto CMS
if errorlevel = 1 goto TANDY

:TANDY
CONFIG -set "mididevice=default"
cls
@Exe MCGA Mouse Hard Tandy 
goto quit

:CMS
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
cls
@Exe MCGA Mouse Hard CMS 
goto quit

:SB16
CONFIG -set "mididevice=default"
cls
@Exe MCGA Mouse Hard AdLib 
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@Exe MCGA Mouse Hard MIDI B 
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cls
@Exe MCGA Mouse Hard MIDI A 
goto quit

:quit
exit