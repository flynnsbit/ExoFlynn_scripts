:menu
@echo off
cls
echo.
echo Press 1 for Bram Stoker's Dracula w/ SoundBlaster
echo Press 2 for Bram Stoker's Dracula w/ MT-32 (LAPC-1)
echo Press 3 for Bram Stoker's Dracula w/ Sound Canvas (SCC-1)
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
@call DRACULA
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@call DRACULA
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cls
@call DRACULA
goto quit

:quit
exit