:menu
@echo off
cls
echo.
echo Press 1 for Battle Arena Toshinden w/ SoundBlaster
echo Press 2 for Battle Arena Toshinden w/ MT-32
echo Press 3 for Battle Arena Toshinden w/ Sound Canvas
echo Press 4 for Battle Arena Toshinden w/ CD Audio
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
cd tsd
copy .\sb16\*.* .\
cls
goto menu2

:MT32
CONFIG -set "mididevice=mt32"
cd tsd
copy .\mt32\*.* .\
cls
goto menu2

:SC55
CONFIG -set "mididevice=fluidsynth"
cd tsd
copy .\sc55\*.* .\
cls
goto menu2

:CDA
CONFIG -set "mididevice=default"
cd tsd
copy .\cda\*.* .\
cls
goto menu2

:menu2
@echo off
cls
echo.
echo Press 1 for Battle Arena Toshinden
echo Press 2 for Battle Arena Toshinden 3DFX
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
cycles 70000
tsd -no3d
cd ..
goto quit

:bio2
cls
cycles 70000
call tsd3dfx
cycles 60000
cd ..
goto quit

:quit
exit