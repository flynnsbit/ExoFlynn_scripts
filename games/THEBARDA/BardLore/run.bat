:menu
@echo off
cls
echo.
echo Press 1 for The Bard's Lore: The Warrior & The Dragon w/ Tandy
echo Press 2 for The Bard's Lore: The Warrior & The Dragon w/ Disney Sound Source
echo Press 3 for The Bard's Lore: The Warrior & The Dragon w/ SoundBlaster
echo Press 4 for The Bard's Lore: The Warrior & The Dragon w/ MT-32
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto MT32
if errorlevel = 3 goto SB16
if errorlevel = 2 goto SS
if errorlevel = 1 goto TANDY

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@BARDLORE
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@BARDLORE
goto quit

:TANDY
CONFIG -set "mididevice=default"
copy .\tandy\*.* .\
cls
@BARDLORE
goto quit

:SS
CONFIG -set "mididevice=default"
copy .\SS\*.* .\
cls
@BARDLORE
goto quit

:quit
exit