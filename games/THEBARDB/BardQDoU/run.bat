:menu
@echo off
cls
echo.
echo Press 1 for The Bard's Quest: Dungeons of the Unknown w/ Tandy
echo Press 2 for The Bard's Quest: Dungeons of the Unknown w/ Disney Sound Source
echo Press 3 for The Bard's Quest: Dungeons of the Unknown w/ SoundBlaster
echo Press 4 for The Bard's Quest: Dungeons of the Unknown w/ MT-32
echo Press 5 for The Bard's Quest: Dungeons of the Unknown w/ Sound Canvas 
echo Press 6 to Quit
echo.
choice /C:123456 /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 5 goto SC55
if errorlevel = 4 goto MT32
if errorlevel = 3 goto SB16
if errorlevel = 2 goto SS
if errorlevel = 1 goto tandy

:tandy
CONFIG -set "mididevice=default"
copy .\tandy\*.* .\
cls
@BQUEST1
goto quit

:SS
CONFIG -set "mididevice=default"
copy .\ss\*.* .\
cls
@BQUEST1
goto quit

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@BQUEST1
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@BQUEST1
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\mt32\*.* .\
cls
@BQUEST1
goto quit

:quit
exit