:menu
@echo off
cls
echo.
echo Press 1 for Knights of the Sky w/ Tandy
echo Press 2 for Knights of the Sky w/ SoundBlaster
echo Press 3 for Knights of the Sky w/ MT-32
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
@KNIGHTS /M /GM /AA
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@KNIGHTS /M /GM /AR
goto quit

:TANDY
CONFIG -set "mididevice=default"
cls
@KNIGHTS /M /GM /AT
goto quit

:quit
exit