:menu
@echo off
cls
echo.
echo Press 1 for Buzz Aldrin's Race into Space w/ SoundBlaster
echo Press 2 for Buzz Aldrin's Race into Space w/ MT-32
echo Press 3 for Buzz Aldrin's Race into Space w/ Sound Canvas
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
@BARIS.EXE 11 5
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@BARIS.EXE 3 5
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cls
@BARIS.EXE 4 5
goto quit

:quit
exit