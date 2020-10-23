:menu
@echo off
cls
echo.
echo Press 1 for Theme Park w/ SoundBlaster
echo Press 2 for Theme Park w/ MT-32
echo Press 3 for Theme Park w/ Sound Canvas
echo Press 4 to Quit
echo.
echo This game has a High res mode that can be activitaed by
echo pressing R when in game. This will require increased cycles
echo however, so follow this by pressing Ctrl-f12 one time.
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del SNDSETUP.INF
copy .\sb16\*.*
cls
@call THEME
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del SNDSETUP.INF
copy .\mt32\*.*
cls
@call THEME
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del SNDSETUP.INF
copy .\sc55\*.*
cls
@call THEME
goto quit

:quit
exit