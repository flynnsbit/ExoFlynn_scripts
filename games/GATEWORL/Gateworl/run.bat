:menu
@echo off
cls
echo.
echo Press 1 for Gateworld w/ SoundBlaster
echo Press 2 for Gateworld w/ MT-32
echo Press 3 for Gateworld w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd GW1
copy .\sb16\*.*
cd ..
cd GW2
copy .\sb16\*.*
cd ..
cd GW3
copy .\sb16\*.*
cd ..
cd MICRO4M\GORG\SETUP
copy .\sb16\*.*
cd ..
copy .\sb16\*.*
cd ..
cd ..
cls
goto game

:MT32
CONFIG -set "mididevice=mt32"
cd GW1
copy .\mt32\*.*
cd ..
cd GW2
copy .\mt32\*.*
cd ..
cd GW3
copy .\mt32\*.*
cd ..
cd MICRO4M\GORG\SETUP
copy .\mt32\*.*
cd ..
copy .\mt32\*.*
cd ..
cd ..
cls
goto game

:SC55
CONFIG -set "mididevice=fluidsynth"
cd GW1
copy .\sc55\*.*
cd ..
cd GW2
copy .\sc55\*.*
cd ..
cd GW3
copy .\sc55\*.*
cd ..
cd MICRO4M\GORG\SETUP
copy .\sc55\*.*
cd ..
copy .\sc55\*.*
cd ..
cd ..
cls
goto game

:game
@echo off
cls
echo.
echo Press 1 for GateWorld Episode 1
echo Press 2 for GateWorld Episode 2
echo Press 3 for GateWorld Episode 3
echo Press 4 for G.O.R.G. (CD Re-release)
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto gorg
if errorlevel = 3 goto gw3
if errorlevel = 2 goto gw2
if errorlevel = 1 goto gw1

:gw1
cls
cd gw1
GTWRLD1
cd ..
goto menu

:gw2
cls
cd gw2
GTWRLD2
cd ..
goto menu

:gw3
cls
cd gw3
GTWRLD3
cd ..
goto menu

:gorg
cls
cd micro4m
cd gorg
gorg
cd ..
cd ..
goto menu

:quit
exit