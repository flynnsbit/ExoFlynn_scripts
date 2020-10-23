:menu
@echo off
cls
echo.
echo Press 1 for Might and Magic 3: Isles of Terra w/ SoundBlaster
echo Press 2 for Might and Magic 3: Isles of Terra w/ MT32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
del MM3.CFG
copy .\sb16\*.*
CONFIG -set mididevice=default
cls
@MM3.COM
goto quit
cls

:MT32
del MM3.CFG
copy .\mt32\*.*
CONFIG -set mididevice=mt32
cls
@MM3.COM
goto quit
cls

:quit
exit