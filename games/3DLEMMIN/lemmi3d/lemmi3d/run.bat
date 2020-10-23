:menu
@echo off
cls
echo.
echo Press 1 for w/ SoundBlaster
echo Press 2 for w/ MT32
echo Press 3 for w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd ..
cd .\LM3D.CD
del LM3D.CFG
copy .\sb16\*.*
cd ..
cd lemmi3d
@L3D
cls
goto quit
cls

:MT32
CONFIG -set "mididevice=mt32"
cd ..
cd .\LM3D.CD
del LM3D.CFG
copy .\mt32\*.*
cd ..
cd lemmi3d
@L3D
cls
goto quit
cls

:SC55
CONFIG -set "mididevice=fluidsynth"
cd ..
cd .\LM3D.CD
del LM3D.CFG
copy .\sc55\*.*
cd ..
cd lemmi3d
@L3D
cls
goto quit
cls

:quit
exit