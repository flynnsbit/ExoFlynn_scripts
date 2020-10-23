:menu
@echo off
cls
echo.
echo Press 1 for EF2000 (Special Edition) w/ SoundBlaster
echo Press 2 for EF2000 (Special Edition) w/ MT-32
echo Press 3 for EF2000 (Special Edition) w/ Sound Canvas
echo Press 4 for EF2000 (Special Edition) w/ CD music
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
cd EF2000V2
del MDI.INI
del EF2000.CFG
copy .\sb16\*.*
cd ..
cd EF2000V2.3DF
del MDI.INI
del EF2000.CFG
copy .\sb16\*.*
cd ..
cls
goto menu2

:MT32
CONFIG -set "mididevice=mt32"
cd EF2000V2
del MDI.INI
del EF2000.CFG
copy .\mt32\*.*
cd ..
cd EF2000V2.3DF
del MDI.INI
del EF2000.CFG
copy .\mt32\*.*
cd ..
cls
goto menu2

:SC55
CONFIG -set "mididevice=fluidsynth"
cd EF2000V2
del MDI.INI
del EF2000.CFG
copy .\sc55\*.*
cd ..
cd EF2000V2.3DF
del MDI.INI
del EF2000.CFG
copy .\sc55\*.*
cd ..
cls
goto menu2

:CDA
CONFIG -set "mididevice=default"
cd EF2000V2
del MDI.INI
del EF2000.CFG
copy .\cda\*.*
cd ..
cd EF2000V2.3DF
del MDI.INI
del EF2000.CFG
copy .\cda\*.*
cd ..
cls
goto menu2

:menu2
cls
echo.
echo Press 1 for EF2000 (Special Edition) 
echo Press 2 for EF2000 (Special Edition) 3DFX
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto 3dfx
if errorlevel = 1 goto game

:3dfx
cd EF2000V2.3DF
cls
EF2000
goto quit

:game
cd EF2000V2
cls
EF2000
goto quit

:quit
exit