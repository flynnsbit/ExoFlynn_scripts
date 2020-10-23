echo off
cls
echo.
echo Press 1 for Battle Isle 2
echo Press 2 for Battle Isle 2 Titan's Legacy
echo Press 3 to Quit
echo.
choice /C:123 /n Please Choose

if errorlevel = 3 goto end
if errorlevel = 2 goto scen
if errorlevel = 1 goto bi2

:bi2
cls
imgset ide10 "/cd/bisle2/bi2.cue"


pause
goto menu2

:scen
cls
cd bi2_scen
imgset ide10 "/cd/bisle2/bi2scen.cue"


pause
goto menu2



:menu2
echo off
cls
echo.
echo Press 1 for Battle Isle 2 w/ SoundBlaster
echo Press 2 for Battle Isle 2 w/ MT-32
echo Press 3 for Battle Isle 2 w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
BATTLE2.EXE ENG
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
BATTLE2.EXE ENG
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\mt32\*.* .\
cls
BATTLE2.EXE ENG
goto quit

:quit
exit
