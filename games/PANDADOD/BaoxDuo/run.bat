:menu
@echo off
cls
echo.
echo Press 1 for Baoxiao Duobiqiu w/ SoundBlaster
echo Press 2 for Baoxiao Duobiqiu w/ MT-32
echo Press 3 for Baoxiao Duobiqiu w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
@echo off
cls
echo.
echo At the copy protection screen, choose a color and type a
echo 4 digit number and press enter.
echo.
echo For SoundBlaster music, go to the in-game options menu 
echo and change music card (first option) to SoundBlaster.
echo.
pause
@cdodge
goto quit

:MT32
CONFIG -set "mididevice=mt32"
@echo off
cls
echo.
echo At the copy protection screen, choose a color and type a
echo 4 digit number and press enter.
echo.
echo For Roland MT-32 music, go to the in-game options menu 
echo and change music card (first option) to Roland MT-32.
echo.
pause
@cdodge
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
@echo off
cls
echo.
echo At the copy protection screen, choose a color and type a
echo 4 digit number and press enter.
echo.
echo For Roland Sound Canvas music, go to the in-game options menu 
echo and change music card (first option) to General MIDI.
echo.
pause
@cdodge
goto quit

:quit
exit