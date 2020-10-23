:menu
@echo off
cls
echo.
echo Press 1 for Anvil of Dawn w/ SoundBlaster
echo Press 2 for Anvil of Dawn w/ MT-32
echo Press 3 for Anvil of Dawn w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto mt32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del HMISET.CFG
copy .\sb16\*.*
cls
@ANVIL
goto quit

:mt32
CONFIG -set "mididevice=mt32"
del HMISET.CFG
copy .\mt32\*.*
cls
@ANVIL
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del HMISET.CFG
copy .\sc55\*.*
cls
@ANVIL
goto quit

:quit
exit