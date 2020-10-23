:menu
@echo off
cls
echo.
echo Press 1 for Druid: Daemons of the Mind w/ SoundBlaster
echo Press 2 for Druid: Daemons of the Mind w/ MT-32
echo Press 3 for Druid: Daemons of the Mind w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del DRUID.INI
copy .\sb16\*.*
cls
@DRUID
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del DRUID.INI
copy .\mt32\*.*
cls
@DRUID
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del DRUID.INI
copy .\sc55\*.*
cls
@DRUID
goto quit

:quit
exit