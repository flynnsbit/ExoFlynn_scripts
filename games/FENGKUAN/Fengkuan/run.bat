:menu
@echo off
cls
echo.
echo Press 1 for Fengkuang Shuang Xiang Pao w/ SoundBlaster
echo Press 2 for Fengkuang Shuang Xiang Pao w/ MT-32
echo Press 3 for Fengkuang Shuang Xiang Pao w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del CRAZY.EXE
copy .\sb16\*.*
cls
@CRAZY.COM
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del CRAZY.EXE
copy .\mt32\*.*
cls
@CRAZY.COM
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del CRAZY.EXE
copy .\sc55\*.*
cls
@CRAZY.COM
goto quit

:quit
exit