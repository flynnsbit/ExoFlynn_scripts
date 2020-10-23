:menu
@echo off
cls
echo.
echo Press 1 for WarCraft: Orcs & Humans w/ SoundBlaster
echo Press 2 for WarCraft: Orcs & Humans w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del CONFIG.WAR
copy .\sb16\*.*
cls
@WAR
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del CONFIG.WAR
copy .\sc55\*.*
cls
@WAR
goto quit

:quit
exit