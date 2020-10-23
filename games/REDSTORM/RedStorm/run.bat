:menu
@echo off
cls
echo.
echo Press 1 for Red Storm Rising w/ Tandy
echo Press 2 for Red Storm Rising w/ Adlib
echo Press 3 for Red Storm Rising w/ MT-32
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
@redstorm /nj /gm /aa
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@redstorm /nj /gm /ab
goto quit

:TANDY
CONFIG -set "mididevice=default"
cls
@redstorm /nj /gm /at
goto quit

:quit
exit