:menu
@echo off
cls
echo.
echo Press 1 for Warlords II Deluxe w/ SoundBlaster
echo Press 2 for Warlords II Deluxe w/ MT32
echo Press 3 for Warlords II Deluxe w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del SOUND.DAT
copy .\sb16\*.*
cd SOUND
del SBPRO.COM
del MIDPAK.COM
copy .\sb16\*.*
cd ..
cls
@call war2
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del SOUND.DAT
copy .\mt32\*.*
cd SOUND
del SBPRO.COM
del MIDPAK.COM
copy .\mt32\*.*
cd ..
cls
@call war2
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del SOUND.DAT
copy .\sc55\*.*
cd SOUND
del SBPRO.COM
del MIDPAK.COM
copy .\sc55\*.*
cd ..
cls
@call war2
goto quit

:quit
exit