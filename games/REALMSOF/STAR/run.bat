:menu
@echo off
cls
echo.
echo Press 1 for Realms of Arkania 2: Star Trail w/ SoundBlaster
echo Press 2 for Realms of Arkania 2: Star Trail w/ MT32
echo Press 3 for Realms of Arkania 2: Star Trail w/ Sound Canvas
echo Press 4 to Transfer a Save from Realms of Arkania: Blade of Destiny
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto TRAN
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd DATA
del SOUND.ADV
del SOUND.CFG
copy .\sb16\*.*
cd ..
cls
@STAR
goto quit
cls

:MT32
CONFIG -set "mididevice=mt32"
cd DATA
del SOUND.ADV
del SOUND.CFG
copy .\mt32\*.*
cd ..
cls
@STAR
goto quit
cls

:SC55
CONFIG -set "mididevice=fluidsynth"
cd DATA
del SOUND.ADV
del SOUND.CFG
copy .\sc55\*.*
cd ..
cls
@STAR
goto quit
cls

:tran
cd ..
cls
echo.
echo To transfer a character from Realms of Arkania: Blade of Destiny,
echo please ensure the following:
echo 1: Realms of Arkania: Blade of Destiny is installed
echo 2: You have created a character and saved them in a party.
echo.
echo Once you start Realms of Arkania II, load your old game. This will
echo bring in your original party members.
echo.
echo Press 1 to Transfer from Realms of Arkania: Blade of Destiny
echo Press 2 to Return to the Previous Menu
echo.
choice /C:12 /N Please Choose:

if errorlevel = 2 goto menu
if errorlevel = 1 goto OLD

:old
@copy ..\rarkani1\*.chr .\STAR\GAMES\
@copy ..\rarkani1\*.gam .\STAR\GAMES\
cd STAR
goto menu


:quit
exit