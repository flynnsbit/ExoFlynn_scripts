:menu
@echo off
cls
echo.
echo Press 1 for Championship Manager: End of Season Edition w/ SoundBlaster
echo Press 2 for Championship Manager: End of Season Edition w/ MT-32
echo Press 3 to Quit
echo.
echo This game is not cracked and requires the codes provided in the extras section.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
mmouse.com
cmexe.exe a
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
mmouse.com
cmexe.exe r
goto quit

:quit
exit