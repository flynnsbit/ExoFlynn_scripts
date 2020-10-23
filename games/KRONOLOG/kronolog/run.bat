:menu
@echo off
cls
echo.
echo Press 1 for Kronolog: The Nazi Paradox w/ SoundBlaster
echo Press 2 for Kronolog: The Nazi Paradox w/ MT-32
echo Press 3 for Red Hell w/ SoundBlaster
echo Press 4 for Red Hell w/ MT-32
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto RHMT32
if errorlevel = 3 goto RHSB16
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@KRONO
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@KRONO
goto quit

:RHSB16
cd REDHELL
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@REDHELL
goto quit

:RHMT32
CONFIG -set "mididevice=mt32"
cd REDHELL
copy .\mt32\*.* .\
cls
@REDHELL
goto quit

:quit
exit