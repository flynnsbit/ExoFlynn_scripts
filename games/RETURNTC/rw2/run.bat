:menu
@echo off
cls
echo.
echo Press 1 for Return to Ringworld w/ SoundBlaster
echo Press 2 for Return to Ringworld w/ MT-32
echo Press 3 for Return to Ringworld w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd r2rw
copy .\sb16\*.* .\
cls
@R2RW
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd r2rw
copy .\mt32\*.* .\
cls
@R2RW
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd r2rw
copy .\sc55\*.* .\
cls
@R2RW
goto quit

:quit
exit