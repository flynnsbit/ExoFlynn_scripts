:menu
@echo off
cls
echo.
echo Press 1 for Toyota Celica GT Rally w/ SoundBlaster
echo Press 2 for Toyota Celica GT Rally w/ MT-32
echo Press 3 to Quit
echo.
echo Press F6 during the race to switch between
echo music and sound effects.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@RALLY
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@RALLY
goto quit

:quit
exit