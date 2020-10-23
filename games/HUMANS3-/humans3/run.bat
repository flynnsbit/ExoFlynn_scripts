:menu
@echo off
cls
echo.
echo Press 1 for Humans 3: Evolution w/ SoundBlaster
echo Press 2 for Humans 3: Evolution w/ MT-32
echo Press 3 for Humans 3: Evolution w/ Sound Canvas
echo Press 4 for Humans 3: Evolution w/ CD Audio
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto CDA
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd bits\intro
copy .\sc\*.* .\
cd ..
cd ..
copy .\sb16\*.* .\
cls
@EVO
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd bits\intro
copy .\sc\*.* .\
cd ..
cd ..
copy .\mt32\*.* .\
cls
@EVO
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd bits\intro
copy .\sc\*.* .\
cd ..
cd ..
copy .\sc55\*.* .\
cls
@EVO
goto quit

:CDA
CONFIG -set "mididevice=default"
cd bits\intro
copy .\cd\*.* .\
cd ..
cd ..
copy .\sb16\*.* .\
cls
@EVO
goto quit

:quit
exit