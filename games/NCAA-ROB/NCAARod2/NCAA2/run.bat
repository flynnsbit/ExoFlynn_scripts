:menu
@echo off
cls
echo.
echo Press 1 for NCAA: Road to the Final Four 2 w/ SoundBlaster
echo Press 2 for NCAA: Road to the Final Four 2 w/ Gravis Ultrasound
echo Press 3 for NCAA: Road to the Final Four 2 w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto GUS
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@call NCAA2
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@call NCAA2
goto quit

:GUS
CONFIG -set "mididevice=default"
copy .\gus\*.* .\
cd ..
cd ultrasnd
ultramid
cd ..
cd NCAA2
cls
@call NCAA2
goto quit

:quit
exit