:menu
@echo off
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
copy .\sb16\*.* .\
cls
cryptic
goto quit

:GUS
copy .\gus\*.* .\
CONFIG -set "mididevice=default"
cls
cryptic
goto quit

:SC55
copy .\sc55\*.* .\
CONFIG -set "mididevice=fluidsynth"
cls
cryptic
goto quit

:CDA
imgmount d ".\games\CrypticP\cd\1unit.cue" -t cdrom
copy .\SB16\*.* .\
CONFIG -set "mididevice=fluidsynth"
cryptic
goto quit

:quit