:menu
@echo off
cls
echo.
echo Press 1 for M1 Tank Platoon w/ Tandy
echo Press 2 for M1 Tank Platoon w/ SoundBlaster
echo Press 3 for M1 Tank Platoon w/ MT-32
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
@tank /GM /AB /NJ /D1
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@tank /GM /AI /NJ /D1
goto quit

:TANDY
cls
@tank /GM /AT /NJ /D1
goto quit

:quit
exit