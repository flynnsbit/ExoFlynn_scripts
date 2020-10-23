:menu
@echo off
cls
echo.
echo Press 1 for Citizens: Backwater Affairs! w/ SoundBlaster
echo Press 2 for Citizens: Backwater Affairs! w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd src
cd sound
copy .\sb16\*.* .\
cd ..
cd ..
cls
@call CITIZENS
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd src
cd sound
copy .\sc55\*.* .\
cd ..
cd ..
cls
@call CITIZENS
goto quit

:quit
exit