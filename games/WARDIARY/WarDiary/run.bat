:menu
@echo off
cls
echo.
echo Press 1 for War Diary w/ SoundBlaster
echo Press 2 for War Diary w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd NANJUNG
del NANJUNG.CFG
copy .\sb16\*.*
cd ..
D:
cls
@GAME
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd NANJUNG
del NANJUNG.CFG
copy .\sc55\*.*
cd ..
D:
cls
@GAME
goto quit

:quit
exit