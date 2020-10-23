:menu
@echo off
cls
echo.
echo Press 1 for Elf w/ SoundBlaster
echo Press 2 for Elf w/ MT-32
echo Press 3 to Quit
echo.
echo This sets DOSBox to the proper midi device. Please choose
echo the same sound device when the game starts.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
@ELF
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@ELF
goto quit

:quit
exit