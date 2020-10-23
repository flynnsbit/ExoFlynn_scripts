:menu
@echo off
cls
echo.
echo Press 1 for Earl Weaver Baseball II w/ Tandy
echo Press 2 for Earl Weaver Baseball II w/ SoundBlaster
echo Press 3 for Earl Weaver Baseball II w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:TANDY
CONFIG -set "mididevice=default"
cd EWB20TD
cls
@EWB2
goto quit

:SB16
CONFIG -set "mididevice=default"
cd EWB20sb
cls
@EWB2
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd EWB20mt
cls
@EWB2
goto quit

:quit
exit