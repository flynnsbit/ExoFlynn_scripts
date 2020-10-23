:menu
@echo off
cls
echo.
echo Press 1 for Witchaven w/ SoundBlaster
echo Press 2 for Witchaven w/ MT32
echo Press 3 for Witchaven w/ Sound Canvas
echo Press 4 for ETTiNGRiNDER's Witchaven w/ SoundBlaster
echo Press 5 for ETTiNGRiNDER's Witchaven w/ MT32
echo Press 6 for ETTiNGRiNDER's Witchaven w/ Sound Canvas
echo Press 7 to Quit
echo.
echo ETTiNGRiNDER's Witchaven is a version built by a former developer which fixes
echo multiple bugs and add's other features.
echo.
choice /C:1234567 /N Please Choose:

if errorlevel = 7 goto quit
if errorlevel = 6 goto egwhSC
if errorlevel = 5 goto egwhMT
if errorlevel = 4 goto egwhSB
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:egwhSC
CONFIG -set "mididevice=fluidsynth"
CONFIG -set "cycles=175000"
del HMISET.CFG
copy .\sc55\*.*
cls
@egwh1.exe
goto quit

:egwhMT
CONFIG -set "mididevice=mt32"
CONFIG -set "cycles=175000"
del HMISET.CFG
copy .\mt32\*.*
cls
@egwh1.exe
goto quit

:egwhSB
CONFIG -set "mididevice=default"
CONFIG -set "cycles=175000"
del HMISET.CFG
copy .\sb16\*.*
cls
@egwh1.exe
goto quit

:SB16
CONFIG -set "mididevice=default"
del HMISET.CFG
copy .\sb16\*.*
cls
@call WHAVEN
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del HMISET.CFG
copy .\mt32\*.*
cls
@call WHAVEN
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del HMISET.CFG
copy .\sc55\*.*
cls
@call WHAVEN
goto quit

:quit
exit