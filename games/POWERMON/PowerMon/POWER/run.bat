:menu
@echo off
cls
echo.
echo Press 1 for PowerMonger w/ Low Res 256 Color & SoundBlaster
echo Press 2 for PowerMonger w/ High Res 16 Color & SoundBlaster
echo Press 3 for PowerMonger w/ Low Res 256 Color & MT-32
echo Press 4 for PowerMonger w/ High Res 16 Color & MT-32
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto MT32H
if errorlevel = 3 goto MT32L
if errorlevel = 2 goto SB16H
if errorlevel = 1 goto SB16L

:SB16H
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@play16 /A/V
@Game /1lsV
goto quit

:SB16L
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@play256 /A/M
@Game /1lsM
goto quit

:MT32H
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@play16 /R/V
@Game /1lcV
goto quit

:MT32L
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@play256 /R/M
@Game /1lcM
goto quit

:quit
exit