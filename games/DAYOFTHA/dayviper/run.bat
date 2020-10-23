:menu
@echo off
cls
echo.
echo Press 1 for Day of the Viper w/ SoundBlaster
echo Press 2 for Day of the Viper w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
@VIPER
goto quit

:MT32
CONFIG -set "mididevice=fluidsynth"
cls
@VIPER
goto quit

:quit
exit