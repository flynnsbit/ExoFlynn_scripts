:menu
@echo off
cls
echo.
echo Press 1 for Time Paradox w/ SoundBlaster
echo Press 2 for Time Paradox w/ MT-32
echo Press 3 for Time Paradox w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
d:
cls
@echo off
echo.
echo For Creative SoundBlaster music,
echo at the sound card selection screen,
echo choose option 1) Soundblaster (and compatibles).
echo.
pause
cls
@call paradox
goto quit

:MT32
CONFIG -set "mididevice=mt32"
d:
cls
@echo off
echo.
echo For Roland MT-32 music,
echo at the sound card selection screen,
echo choose option 5) Roland LAPC-1 / Soundblaster.
echo.
pause
cls
@call paradox

:SC55
CONFIG -set "mididevice=fluidsynth"
d:
cls
@echo off
echo.
echo For Roland Sound Canvas music,
echo at the sound card selection screen,
echo choose option 4) Roland SCC-1 / Soundblaster.
echo.
pause
cls
@call paradox
goto quit

:quit
exit