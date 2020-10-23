:menu
@echo off
cls
echo.
echo Press 1 for U.S. Navy Fighters Gold w/ SoundBlaster
echo Press 2 for U.S. Navy Fighters Gold w/ MT-32
echo Press 3 for U.S. Navy Fighters Gold w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del EA.CFG
del MIDPAK.AD
del MIDPAK.COM
copy .\sb16\*.*
cls
goto game

:MT32
CONFIG -set "mididevice=mt32"
del EA.CFG
del MIDPAK.AD
del MIDPAK.COM
copy .\mt32\*.*
cls
goto game

:SC55
CONFIG -set "mididevice=fluidsynth"
del EA.CFG
del MIDPAK.AD
del MIDPAK.COM
copy .\sc55\*.*
cls
goto game

:game
@echo off
cls
echo.
echo Press 1 to play U.S. Navy Fighters GOLD in Navy Fighters Mode
echo Press 2 to play U.S. Navy Fighters GOLD in Marine Fighters Mode
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto marine
if errorlevel = 1 goto navy

:navy
cls
USNF
goto quit

:marine
cls
call MF
goto quit

:quit