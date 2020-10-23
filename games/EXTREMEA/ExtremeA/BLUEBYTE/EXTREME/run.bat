:menu
@echo off
cls
echo.
echo Press 1 for Extreme Assault w/ SoundBlaster
echo Press 2 for Extreme Assault w/ MT-32
echo Press 3 for Extreme Assault w/ Sound Canvas
echo Press 4 for Extreme Assault w/ CD Audio
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 4 goto CDA
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\midi\*.*
cd DRIVERS
del MDI.INI
copy .\sb16\*.*
cd ..
goto menu2

:MT32
CONFIG -set "mididevice=mt32"
copy .\midi\*.*
cd DRIVERS
del MDI.INI
copy .\mt32\*.*
cls
cd ..
goto menu2

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\midi\*.*
cd DRIVERS
del MDI.INI
copy .\sc55\*.*
cls
cd ..
goto menu2

:CDA
CONFIG -set "mididevice=default"
copy .\CDA\*.*
goto menu2

:menu2
@echo off
cls
echo.
echo Press 1 for Extreme Assault
echo Press 2 for Extreme Assault w/ 3DFX
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto 3dfx
if errorlevel = 1 goto norm

:norm
cls
@call start
goto quit

:3dfx
cls
@call 3dfx
goto quit

:quit
exit