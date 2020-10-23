:menu
@echo off
cls
echo.
echo Press 1 for Power Drift w/ Game Blaster
echo Press 2 for Power Drift w/ SoundBlaster
echo Press 3 for Power Drift w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16
if errorlevel = 3 goto GB

:GB
CONFIG -set "sbtype=gb"
copy .\cms\*.* .\
cls
@PD
goto quit

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@PD
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@PD
goto quit

:quit
exit