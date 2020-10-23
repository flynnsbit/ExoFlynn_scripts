:menu
@echo off
cls
echo.
echo Press 1 for William Shatner's TekWar w/ SoundBlaster
echo Press 2 for William Shatner's TekWar w/ MT32
echo Press 3 for William Shatner's TekWar w/ Sound Canvas
echo Press 4 to Quit
echo.
echo For CD Audio in the game you have to manually start it.
echo Alt-P = Play
echo Alt-S = Stop
echo Alt-R = Reset Track
echo Alt-F = Forward Track
echo Alt-B = Back Track
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del HMISET.CFG
copy .\sb16\*.*
cls
@call TEKWAR
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del HMISET.CFG
copy .\mt32\*.*
cls
@call TEKWAR
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del HMISET.CFG
copy .\sc55\*.*
cls
@call TEKWAR
goto quit

:quit
exit