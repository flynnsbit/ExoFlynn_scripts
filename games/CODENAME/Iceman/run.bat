:menu
@echo off
cls
echo.
echo Press 1 for Codename ICEMAN w/ Tandy
echo Press 2 for Codename ICEMAN w/ Game Blaster
echo Press 3 for Codename ICEMAN w/ SoundBlaster
echo Press 4 for Codename ICEMAN w/ MT32
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto MT32
if errorlevel = 3 goto SB16
if errorlevel = 2 goto CMS
if errorlevel = 1 goto TANDY

:CMS
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
cls
@sierra cesource.cfg
goto quit

:TANDY
CONFIG -set "mididevice=default"
cls
@sierra tesource.cfg
goto quit

:SB16
CONFIG -set "mididevice=default"
cls
@sierra sesource.cfg
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@sierra mesource.cfg
goto quit

:quit
exit