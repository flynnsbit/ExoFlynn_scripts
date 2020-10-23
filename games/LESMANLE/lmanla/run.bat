:menu
@echo off
cls
echo.
echo Press 1 for Les Manley in Lost in LA w/ Tandy
echo Press 2 for Les Manley in Lost in LA w/ SoundBlaster
echo Press 3 for Les Manley in Lost in LA w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:TANDY
CONFIG -set "mididevice=fluidsynth"
cls
@EXE MCGA Mouse B 
goto quit

:SB16
CONFIG -set "mididevice=default"
cls
@EXE MCGA Mouse D 
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@EXE MCGA Mouse E 
goto quit

:quit
exit