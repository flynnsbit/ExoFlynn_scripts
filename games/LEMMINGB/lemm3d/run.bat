:menu
@echo off
cls
echo.
echo Press 1 for Lemmings 3D w/ SoundBlaster
echo Press 2 for Lemmings 3D w/ MT32
echo Press 3 for Lemmings 3D w/ Sound Canvas
echo Press 4 for Lemmings 3D w/ CD Music
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto CDM
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd LM3D.CD
del LM3D.CFG
copy .\sb16\*.*
cd ..
@L3D
cls
goto quit
cls

:MT32
CONFIG -set "mididevice=mt32"
cd LM3D.CD
del LM3D.CFG
copy .\mt32\*.*
cd ..
@L3D
cls
goto quit
cls

:SC55
CONFIG -set "mididevice=fluidsynth"
cd LM3D.CD
del LM3D.CFG
copy .\sc55\*.*
cd ..
@L3D
cls
goto quit
cls

:CDM
CONFIG -set "mididevice=default"
d:
cls
l3d
goto quit

:quit
exit