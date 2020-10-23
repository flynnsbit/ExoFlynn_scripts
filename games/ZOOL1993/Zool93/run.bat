:menu
@echo off
cls
echo.
echo Press 1 for Zool w/ SoundBlaster
echo Press 2 for Zool w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
echo.
echo This game requires the sound to be chosen from the main menu.
echo. After you pass the crack, hit SPACE for options on the menu,
echo move down to SOUND, and press right to choose S. BLAST. Hit
echo ENTER to make your selection and begin playing.
echo.
pause
@start
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
echo.
echo This game requires the sound to be chosen from the main menu.
echo. After you pass the crack, hit SPACE for options on the menu,
echo move down to SOUND, and press right to choose ROLAND. Hit
echo ENTER to make your selection and begin playing.
echo.
pause
@start
goto quit

:quit
exit