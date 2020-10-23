:menu
@echo off
cls
echo.
echo Press 1 for Coba on the Run 1 w/ SoundBlaster
echo Press 2 for Coba on the Run 1 w/ MT-32
echo Press 3 for Coba on the Run 1 w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd GO
copy .\sb16\*.* .\
cd ..
cls
@call COBA
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd GO
copy .\mt32\*.* .\
cd ..
cls
@call COBA
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd GO
copy .\sc55\*.* .\
cd ..
cls
@call COBA
goto quit

:quit
exit