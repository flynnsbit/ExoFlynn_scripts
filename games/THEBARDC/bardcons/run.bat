:menu
@echo off
cls
echo.
echo Press 1 for Bard's Tale Construction Set
echo Press 2 for Bard's Tale Game w/ Tandy
echo Press 3 for Bard's Tale Game w/ SoundBlaster
echo Press 4 for Bard's Tale Game w/ MT-32 & Tandy SFX
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto MT32
if errorlevel = 3 goto SB16
if errorlevel = 2 goto tandy
if errorlevel = 1 goto ct

:ct
CONFIG -set "mididevice=default"
cls
@btcs
goto quit

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@BARDGAME
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@BARDGAME
goto quit

:tandy
CONFIG -set "mididevice=fluidsynth"
copy .\tandy\*.* .\
cls
@BARDGAME
goto quit

:quit
exit