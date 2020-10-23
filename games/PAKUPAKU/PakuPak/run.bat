:menu
@echo off
cls
echo.
echo Press 1 for Paku Paku w/ Tandy
echo Press 2 for Paku Paku w/ GameBlaster
echo Press 3 for Paku Paku w/ SoundBlaster
echo Press 4 for Paku Paku w/ MT-32
echo Press 5 for Paku Paku w/ Sound Canvas
echo Press 6 to Quit
echo.
choice /C:123456 /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 5 goto SC55
if errorlevel = 4 goto MT32
if errorlevel = 3 goto SB16
if errorlevel = 2 goto GB
if errorlevel = 1 goto TANDY

:TANDY
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=none"
cls
@paku /tandySound
goto quit

:GB
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
cls
@paku /cms
goto quit

:SB16
CONFIG -set "mididevice=default"
cls
@paku /adlib
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@paku /mt32
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cls
@paku /midi
goto quit

:quit
exit