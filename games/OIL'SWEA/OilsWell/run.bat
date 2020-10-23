:menu
@echo off
cls
echo.
echo Press 1 for Oil's Well w/ Game Blaster
echo Press 2 for Oil's Well w/ SoundBlaster
echo Press 3 for Oil's Well w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto CMS

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@OILSWELL
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@OILSWELL
goto quit

:CMS
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
copy .\cms\*.* .\
cls
@OILSWELL
goto quit

:quit
exit