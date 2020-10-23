:menu
@echo off
cls
echo.
echo Press 1 for Dinopark Tycoon w/ SoundBlaster
echo Press 2 for Dinopark Tycoon w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd dinopark
copy .\sb16\*.* .\
cls
@DINOPARK
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd dinopark
copy .\mt32\*.* .\
cls
@DINOPARK
goto quit

:quit
exit