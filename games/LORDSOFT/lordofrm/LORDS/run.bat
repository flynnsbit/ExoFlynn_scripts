:menu
@echo off
cls
echo.
echo Press 1 for Lords of the Realm w/ SoundBlaster
echo Press 2 for Lords of the Realm w/ MT-32
echo Press 3 for Lords of the Realm w/ Sound Canvas
echo Press 4 for Lords of the Realm CD Version
echo Press 5 to Quit
echo.
echo Note, the CD Version was released as Win95 game, but had a DOS
echo exe file on the disc. Unfortunately I have not discovered any
echo method of getting sound to work with this version.
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto CD
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@lords
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@lords
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cls
@lords
goto quit

:CD
CONFIG -set "mididevice=fluidsynth"
CONFIG -SET "CYCLES=6000"
cd ..
cd lordscd
cls
@LORDS
goto quit

:quit
exit