:menu
@echo off
cls
echo.
echo Press 1 for Hero Quest w/ SoundBlaster
echo Press 2 for Hero Quest w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
goto menu2

:MT32
CONFIG -set "mpu401=intelligent"
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
goto menu2

:quit
exit

:menu2
@echo off
cls
echo.
echo Press 1 to Play the Hero Quest intro.
echo Press 2 to Skip the intro and go straight to Hero Quest.
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto game
if errorlevel = 1 goto intro

:intro
cls
@hero
goto quit

:game
cls
@quest
goto quit

:quit
exit