:menu
@echo off
cls
echo.
echo Press 1 for The Dark Half w/ SoundBlaster
echo Press 2 for The Dark Half w/ MT-32
echo Press 3 for The Dark Half w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd capstone\dhsb16
cls
@call darkhalf
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd capstone\dhmt32
cls
@call darkhalf
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd capstone\dhmt32
cls
@call darkhalf
goto quit

:quit
exit