:menu
@echo off
cls
echo.
echo Press 1 for The Bard's Tale 3: Thief of Fate w/ Tandy
echo Press 2 for The Bard's Tale 3: Thief of Fate w/ SoundBlaster
echo Press 3 for The Bard's Tale 3: Thief of Fate w/ MT-32
echo Press 4 to Quit
echo.
echo You can transfer characters from Part1 or Part 2 if you have those
echo games installed. When using the in game transfer interface, type A: if you
echo want characters from Bard's Tale 1. Type B: if you want characters from
echo Bard's Tale 2.
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:tandy
CONFIG -set "mididevice=default"
copy .\tandy\*.* .\
cls
@thiefp
goto quit

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@thiefp
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@thiefp
goto quit

:quit
exit