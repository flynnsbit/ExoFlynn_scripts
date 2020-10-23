:menu
@echo off
cls
echo.
echo Press 1 for John Madden Football II w/ Tandy
echo Press 2 for John Madden Football II w/ SoundBlaster
echo Press 3 for John Madden Football II w/ MT-32
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
@MFB2
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@MFB2 R
goto quit

:TANDY
CONFIG -set "sbtype=none"
CONFIG -set "mididevice=default"
cls
@MFB2
goto quit

:quit
exit