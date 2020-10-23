:menu
@echo off
cls
echo.
echo Press 1 for Abuse w/ SoundBlaster (No music)
echo Press 2 for Abuse w/ MT-32
echo Press 3 for Abuse w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del SNDCARD.CFG
copy .\sb16\*.*
cls
@ABUSE
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del SNDCARD.CFG
copy .\mt32\*.*
cls
@ABUSE
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del SNDCARD.CFG
copy .\sc55\*.*
cls
@ABUSE
goto quit

:quit
exit