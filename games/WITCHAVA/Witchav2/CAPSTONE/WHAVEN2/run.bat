:menu
@echo off
cls
echo.
echo Press 1 for Witchaven II: Blood Vengeance w/ SoundBlaster
echo Press 2 for Witchaven II: Blood Vengeance w/ MT32
echo Press 3 for Witchaven II: Blood Vengeance w/ Sound Canvas
echo Press 4 for ETTiNGRiNDER's Witchaven II w/ SoundBlaster
echo Press 5 for ETTiNGRiNDER's Witchaven II w/ MT32
echo Press 6 for ETTiNGRiNDER's Witchaven II w/ Sound Canvas
echo Press 7 to Quit
echo.
echo ETTiNGRiNDER's Witchaven is a version built by a former developer which fixes
echo multiple bugs and add's other features.
echo.
choice /C:1234567 /N Please Choose:

if errorlevel = 7 goto quit
if errorlevel = 3 goto EGSC55
if errorlevel = 2 goto EGMT32
if errorlevel = 1 goto EGSB16
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del HMISET.CFG
copy .\sb16\*.*
cls
@WH2
goto quit

:mt32
CONFIG -set "mididevice=mt32"
del HMISET.CFG
copy .\mt32\*.*
cls
@WH2
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del HMISET.CFG
copy .\sc55\*.*
cls
@WH2
goto quit

:EGSB16
CONFIG -set "mididevice=default"
del HMISET.CFG
copy .\sb16\*.*
cls
@egwh2
goto quit

:EGmt32
CONFIG -set "mididevice=mt32"
del HMISET.CFG
copy .\mt32\*.*
cls
@egwh2
goto quit

:EGSC55
CONFIG -set "mididevice=fluidsynth"
del HMISET.CFG
copy .\sc55\*.*
cls
@egwh2
goto quit

:quit
exit