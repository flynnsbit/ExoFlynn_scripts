:menu
@echo off
cls
echo.
echo Press 1 for Leisure Suit Larry II w/ Tandy
echo Press 2 for Leisure Suit Larry II w/ SoundBlaster
echo Press 3 for Leisure Suit Larry II w/ MT32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB
if errorlevel = 1 goto tandy

:SB
CONFIG -set "mididevice=default"
cls
@SCIV sesource.cfg
cls

:MT32
CONFIG -set "mididevice=mt32"
cls
@SCIV mesource.cfg
cls

:tandy
CONFIG -set "mididevice=default"
cls
@SCIV tesource.cfg
cls

:quit
exit