:menu
@echo off
cls
echo.
echo Press 1 for Tempest 2000 w/ SoundBlaster
echo Press 2 for Tempest 2000 w/ MT32
echo Press 3 for Tempest 2000 w/ Sound Canvas
echo Press 4 for Tempest 2000 w/ CD music
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto CDA
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cd SB16
CONFIG -set "mididevice=default"
cd ..
del TEMPEST.CFG
copy .\sb16\*.*
cls
@TEMPEST
goto quit

:MT32
cd MT32
CONFIG -set "mididevice=mt32"
cd ..
del TEMPEST.CFG
copy .\mt32\*.*
cls
@TEMPEST
goto quit

:SC55
cd SC55
CONFIG -set "mididevice=fluidsynth"
cd ..
del TEMPEST.CFG
copy .\sc55\*.*
cls
@TEMPEST
goto quit

:CDA
cd CDA
CONFIG -set "mididevice=default"
cd ..
del TEMPEST.CFG
copy .\cda\*.*
cls
@TEMPEST
goto quit

:quit
exit