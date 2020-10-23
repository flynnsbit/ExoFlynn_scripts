:menu
@echo off
cls
echo.
echo Press 1 for CyberMage: Darklight Awakening w/ SoundBlaster
echo Press 2 for CyberMage: Darklight Awakening w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del SOUNDSYS.CNF
copy .\sb16\*.*
cls
@call CM
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del SOUNDSYS.CNF
copy .\sc55\*.*
cls
@call CM
goto quit

:quit
exit