:menu
echo off
cls
echo.
echo Press 1 for SoundBlaster
echo Press 2 for Gravis Ultrasound
echo Press 3 for Sound Canvas
echo Press 4 for CD Audio
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto CDA
if errorlevel = 3 goto SC55
if errorlevel = 2 goto GUS
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\blood\sb16\*.* .\blood\
copy .\blood3d\sb16\*.* .\blood3d\
copy .\bloodcp\sb16\*.* .\bloodcp\
copy .\bloodpak\sb16\*.* .\bloodpak\
cls
goto menu2

:GUS
copy .\blood\gus\*.* .\blood\
copy .\blood3d\gus\*.* .\blood3d\
copy .\bloodcp\gus\*.* .\bloodcp\
copy .\bloodpak\gus\*.* .\bloodpak\
CONFIG -set "mididevice=default"
cls
goto menu2

:SC55
copy .\blood\sc55\*.* .\blood\
copy .\blood3d\sc55\*.* .\blood3d\
copy .\bloodcp\sc55\*.* .\bloodcp\
copy .\bloodpak\sc55\*.* .\bloodpak\
CONFIG -set "mididevice=fluidsynth"
cls
goto menu2

:CDA
imgset ide10 "/cd/Blood/bloodcd1.cue"


pause
copy .\blood\CDA\*.* .\blood\
copy .\blood3d\CDA\*.* .\blood3d\
copy .\bloodcp\CDA\*.* .\bloodcp\
copy .\bloodpak\CDA\*.* .\bloodpak\
CONFIG -set "mididevice=fluidsynth"
cls
goto menu2

:menu2
echo off
cls
echo.
echo Press 1 for Blood
echo Press 2 for Blood: Cryptic Passages
echo Press 3 for Blood: Plasma Pak
echo Press 4 for Blood: Plasma Pak (3DFX)
echo Press 5 to Quit
echo.
echo. Note: 3DFX version does not run well.
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto bio4
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
cd blood
blood
cd ..
goto quit

:bio2
cls
cd bloodcp
cryptic
cd ..
goto quit

:bio3
cls
cd bloodpak
blood
cd ..
goto quit

:bio4
CONFIG -set "cycles=max"
cls
cd blood3d
3dfx.bat
cd ..
goto quit

:quit
