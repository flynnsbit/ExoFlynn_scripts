:menu
@echo off
cls
echo.
echo Press 1 for Sherlock Holmes: The Case of the Rose Tattoo w/ SoundBlaster
echo Press 2 for Sherlock Holmes: The Case of the Rose Tattoo w/ MT-32
echo Press 3 for Sherlock Holmes: The Case of the Rose Tattoo w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del MDI.INI
copy .\sb16\*.*
cls
@call HOLMES2
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del MDI.INI
copy .\mt32\*.*
cls
@call HOLMES2
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del MDI.INI
copy .\sc55\*.*
cls
@call HOLMES2
goto quit

:quit
exit