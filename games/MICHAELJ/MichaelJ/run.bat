:menu
@echo off
cls
echo.
echo Press 1 for Michael Jordan in Flight w/ SoundBlaster
echo Press 2 for Michael Jordan in Flight w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cd txt
CONFIG -set "mididevice=default"
cd ..
cls
@bbexe -m=sb15.drv -s=ad15.drv 
goto quit

:MT32
cd txt
CONFIG -set "mididevice=mt32"
cd ..
cls
@bbexe -m=mt15.drv -s=ad15.drv 
goto quit

:quit
exit