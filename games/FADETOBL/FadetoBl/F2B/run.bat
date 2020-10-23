:menu
@echo off
cls
echo.
echo Press 1 for Fade to Black w/ SoundBlaster
echo Press 2 for Fade to Black w/ MT-32
echo Press 3 for Fade to Black w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd DATA
cd DRIVERS
del MDI.INI
copy .\sb16\*.*
cd ..
cd ..
cls
@call F2B -2
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd DATA
cd DRIVERS
del MDI.INI
copy .\mt32\*.*
cd ..
cd ..
cls
@call F2B -2
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd DATA
cd DRIVERS
del MDI.INI
copy .\sc55\*.*
cd ..
cd ..
cls
@call F2B -2
goto quit

:quit
exit