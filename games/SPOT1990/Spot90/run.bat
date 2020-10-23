:menu
@echo off
cls
echo.
echo Press 1 for Spot w/ Tandy
echo Press 2 for Spot w/ Game Blaster
echo Press 3 for Spot w/ SoundBlaster
echo Press 4 for Spot w/ MT-32
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto MT32
if errorlevel = 3 goto SB16
if errorlevel = 2 goto CMS
if errorlevel = 1 goto TANDY

:TANDY
CONFIG -set "mididevice=default"
copy .\tandy\*.* .\
cls
@SPOT
goto quit

:CMS
CONFIG -set "sbtype=gb"
CONFIG -set "mididevice=default"
copy .\cms\*.* .\
cls
@SPOT
goto quit

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@SPOT
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@SPOT
goto quit

:quit
exit