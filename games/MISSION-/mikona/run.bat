:menu
@echo off
cls
echo.
echo Press 1 for Mission Impossible w/ Tandy
echo Press 2 for Mission Impossible w/ SoundBlaster
echo Press 3 for Mission Impossible w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cd t
copy .\sb16\*.* .\
cd ..
cls
@call MISSION
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cd t
copy .\mt32\*.* .\
cd ..
cls
@call MISSION
goto quit

:TANDY
CONFIG -set "mididevice=default"
copy .\tandy\*.* .\
cd t
copy .\tandy\*.* .\
cd ..
cls
@call MISSION
goto quit

:quit
exit