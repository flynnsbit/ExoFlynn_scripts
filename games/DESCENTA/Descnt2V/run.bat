:menu
@echo off
cls
echo.
echo Press 1 for Descent II Vertigo w/ Gravis Ultrasound
echo Press 2 for Descent II Vertigo w/ SoundBlaster
echo Press 3 for Descent II Vertigo w/ Sound Canvas
echo Press 4 for Descent II Vertigo w/ CD Music
echo Press 5 to Quit
echo.
echo This pack includes the Vertigo CD, which contained a new soundtrack.
echo To hear this music, you need to press Ctrl-f4 AFTER the game has launched,
echo as the original Descent II CD is required to start the game. It works fine
echo to do this during the game's intro.
echo.
echo Also, when creating a new pilot, the settings will revert to a low resolution.
echo If you would like 640x480, you will need to select this again in the
echo options after creating your pilot.
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto CDA
if errorlevel = 3 goto SC55
if errorlevel = 2 goto SB16
if errorlevel = 1 goto GUS

:SB16
CONFIG -set "mididevice=default"
copy .\descent2\sb16\*.* .\descent2\
cls
goto menu2

:GUS
CONFIG -set "mididevice=default"
copy .\descent2\gus\*.* .\descent2\
cls
goto menu2

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\descent2\sc55\*.* .\descent2\
cls
goto menu2

:CDA
CONFIG -set "mididevice=default"
copy .\descent2\CDA\*.* .\descent2\
cls
goto menu2

:menu2
@echo off
cls
echo.
echo Press 1 for Descent II Vertigo
echo Press 2 for Descent II Vertigo w/ 3DFX
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
cd descent2
call D2
cd ..
goto quit

:bio2
cls
cd descent2
cycles auto limit 90000
d2_3dfx
cd ..
goto quit

:quit
exit