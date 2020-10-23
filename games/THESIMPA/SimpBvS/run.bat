:menu
@echo off
cls
echo.
echo Press 1 for The Simpsons: Bart vs. the Space Mutants w/ SoundBlaster
echo Press 2 for The Simpsons: Bart vs. the Space Mutants w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mpu401=none"
CONFIG -set "mididevice=default"
cls
@call SIMPSONS
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@call SIMPSONS
goto quit

:quit
exit