:menu
@echo off
cls
echo.
echo Press 1 for Theatre of Death w/ SoundBlaster
echo Press 2 for Theatre of Death w/ MT-32
echo Press 3 for Theatre of Death w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
@echo off
echo.
echo For Creative SoundBlaster music,
echo when asked to choose your Sound Support,
echo choose option 3. SoundBlaster PRO / 16.
echo.
echo Choose defaults for Port, IRQ, and DMA.
echo.
pause
cls
@TOD
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@echo off
echo.
echo For Roland MT-32 music,
echo when asked to choose your Sound Support,
echo choose option 7. LAPC1.
echo.
pause
cls
@TOD
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cls
@echo off
echo.
echo For Creative SoundBlaster music,
echo when asked to choose your Sound Support,
echo choose option 6. Roland SCC1 / SoundBlaster.
echo.
pause
cls
@TOD
goto quit

:quit
exit