:menu
@echo off
cls
echo.
echo Press 1 for Tyrian 2000 w/ SoundBlaster
echo Press 2 for Tyrian 2000 w/ Sound Canvas
echo Press 3 for Tyrian 2000 Christmas Mode w/ SoundBlaster
echo Press 4 for Tyrian 2000 Christmas Mode w/ Sound Canvas
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto XSC55
if errorlevel = 3 goto XSB16
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del TYRIAN.CFG
copy .\sb16\*.*
cls
@TYRIAN
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del TYRIAN.CFG
copy .\sc55\*.*
cls
@TYRIAN
goto quit

:XSB16
CONFIG -set "mididevice=default"
del TYRIAN.CFG
copy .\sb16\*.*
cls
@file0001 yesxmas
goto quit

:XSC55
CONFIG -set "mididevice=fluidsynth"
del TYRIAN.CFG
copy .\sc55\*.*
cls
@file0001 yesxmas
goto quit

:quit
exit