:menu
@echo off
cls
echo.
echo Press 1 for Dime City w/ SoundBlaster
echo Press 2 for Dime City w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del CDSOUND.CFG
del JVSOUND.CFG
del OUT
copy .\sb16\*.*
cls
goto game

:SC55
CONFIG -set "mididevice=fluidsynth"
del CDSOUND.CFG
del JVSOUND.CFG
del OUT
copy .\sc55\*.*
cls
goto game

:game
@echo off
cls
echo.
echo Press 1 for Original German version
echo Press 2 for Beta English Version
echo Press 3 to Quit
echo.
choice /C:123 /N

if errorlevel = 3 goto end
if errorlevel = 2 goto eng
if errorlevel = 1 goto germ

:eng
cd english
call dime
goto end

:germ
call dime
goto end

:end
