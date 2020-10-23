:menu
@echo off
cls
echo.
echo Press 1 for Conquests of Camelot w/ Tandy
echo Press 2 for Conquests of Camelot w/ Game Blaster
echo Press 3 for Conquests of Camelot w/ SoundBlaster
echo Press 4 for Conquests of Camelot w/ MT32
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto MT32
if errorlevel = 3 goto SB
if errorlevel = 2 goto GB
if errorlevel = 1 goto TANDY

:SB
CONFIG -set "mididevice=default"
@sierra sesource.cfg
cls

:MT32
CONFIG -set "mididevice=mt32"
@sierra mesource.cfg
cls

:TANDY
CONFIG -set "mididevice=default"
@sierra tesource.cfg
cls

:GB
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
@sierra gesource.cfg
cls

:quit
exit