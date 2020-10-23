:menu
@echo off
cls
echo.
echo Press 1 for Mike Ditka Ultimate Football w/ Tandy
echo Press 2 for Mike Ditka Ultimate Football w/ SoundBlaster
echo Press 3 for Mike Ditka Ultimate Football w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:SB16
CONFIG -set "mididevice=default"
cls
@MDFB D1 M S3 
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@MDFB D1 M S4 
goto quit

:TANDY
CONFIG -set "mididevice=fluidsynth"
cls
@MDFB D1 M S1 
goto quit

:quit
exit