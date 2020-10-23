:menu
@echo off
cls
echo.
echo Press 1 for Shanghai II: Dragon's Eye w/ Game Blaster
echo Press 2 for Shanghai II: Dragon's Eye w/ SoundBlaster
echo Press 3 for Shanghai II: Dragon's Eye w/ MT-32
echo Press 4 for Shanghai II: Dragon's Eye w/ Sound Canvas
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto SC55
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto CMS

:CMS
CONFIG -set "sbtype=gb"
CONFIG -set "mididevice=default"
copy .\cms\*.* .\
cls
@DE
goto quit

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@DE
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@DE
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cls
@DE
goto quit

:quit
exit