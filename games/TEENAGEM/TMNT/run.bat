:menu
@echo off
cls
echo.
echo Press 1 for Teenage Mutant Ninja Turtles w/ Tandy
echo Press 2 for Teenage Mutant Ninja Turtles w/ SoundBlaster
echo Press 3 for Teenage Mutant Hero Turtles w/ Soundblaster
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto TMHT
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:TANDY
CONFIG -set "mididevice=default"
cls
@TMNTEGA TD
goto quit

:SB16
CONFIG -set "mididevice=default"
cls
@TMNTEGA AD
goto quit

:TMHT
CONFIG -set "mididevice=mt32"
cd tmht
cls
@TMNTEGA AD
goto quit

:quit
exit