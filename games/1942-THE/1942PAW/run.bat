:menu
@echo off
cls
echo.
echo Press 1 for 1942: Pacific Air War w/ SoundBlaster
echo Press 2 for 1942: Pacific Air War w/ MT-32
echo Press 3 for 1942: Pacific Air War w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del CONFIG.FT
copy .\sb16\*.*
cls
@1942
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@1942
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del CONFIG.FT
copy .\sc55\*.*
cls
@1942
goto quit

:quit
exit