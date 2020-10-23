:menu
@echo off
cls
echo.
echo Press 1 for Great Naval Battles, Vol. I: North Atlantic 1939-43 w/ SoundBlaster
echo Press 2 for Great Naval Battles, Vol. I: North Atlantic 1939-43 w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del SOUND.CFG
copy .\sb16\*.*
cls
@call GNBNA
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del SOUND.CFG
copy .\mt32\*.*
cls
@call GNBNA
goto quit

:quit
exit