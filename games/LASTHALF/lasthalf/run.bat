:menu
@echo off
cls
echo.
echo Press 1 for Last Half of Darkness 1990 Original Release
echo Press 2 for Last Half of Darkness 1990 VGA Release
echo Press 3 for Last Half of Darkness 1991 VGA Release
echo Press 4 to Quit
echo.
echo The 1990 release uses the Covox Speech Thing for text-to-speech sounds.
echo The 1990 VGA release replaced this with sampled sounds.
echo The 1991 VGA completely changed the games art style, sampled, and some content.
echo Some rooms were removed and all deaths were removed.
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto 1991
if errorlevel = 2 goto 1990-2
if errorlevel = 1 goto 1990

:1990
CONFIG -set "mididevice=default"
cd ega
cls
@lasthalf
goto quit

:1990-2
CONFIG -set "mididevice=default"
cd 1990s
cls
@lasthalf
goto quit

:1991
CONFIG -set "mididevice=default"
cd 1991
cls
@lasthalf
goto quit

:quit
exit