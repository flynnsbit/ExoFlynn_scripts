:menu
@echo off
cls
echo.
echo Press 1 for Budokan The Martial Spirit w/ PC Speaker
echo Press 2 for Budokan The Martial Spirit w/ Game Blaster
echo Press 3 for Budokan The Martial Spirit w/ SoundBlaster
echo Press 4 for Budokan The Martial Spirit w/ MT-32
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto MT32
if errorlevel = 3 goto SB16
if errorlevel = 2 goto GB
if errorlevel = 1 goto PCS

:SB16
CONFIG -set "mididevice=default"
cls
@budo adlib
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@budo mt32
goto quit

:PCS
CONFIG -set "mididevice=default"
cls
@budo
goto quit

:GB
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
cls
@budo CMS
goto quit

:quit
exit