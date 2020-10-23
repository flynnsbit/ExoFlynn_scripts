:menu
@echo off
cls
echo.
echo Press 1 for B-17 Flying Fortress w/ SoundBlaster
echo Press 2 for B-17 Flying Fortress w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\MPS.CD\B17\sb16\*.* .\MPS.CD\B17\
D:
cls
@call go
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\MPS.CD\B17\mt32\*.* .\MPS.CD\B17\
D:
cls
@call go
goto quit

:quit
exit