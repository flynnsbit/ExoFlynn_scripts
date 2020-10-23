:menu
@echo off
cls
echo.
echo Press 1 for Super Samtong w/ SoundBlaster
echo Press 2 for Super Samtong w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del INSTALL.DAT
copy .\sb16\*.*
cls
@SAMTONG
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del INSTALL.DAT
copy .\sc55\*.*
cls
@SAMTONG
goto quit

:quit
exit