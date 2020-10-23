:menu
@echo off
cls
echo.
echo Press 1 for Simon the Sorcerer II w/ SoundBlaster
echo Press 2 for Simon the Sorcerer II w/ MT-32
echo Press 3 for Simon the Sorcerer II w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del CMIDPAK.COM
del MIDI
del MIDPAK.ADV
del MIDPAK.COM
copy .\sb16\*.*
cls
@call SIMON2
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del CMIDPAK.COM
del MIDI
del MIDPAK.ADV
del MIDPAK.COM
copy .\mt32\*.*
cls
@call SIMON2
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del CMIDPAK.COM
del MIDI
del MIDPAK.ADV
del MIDPAK.COM
copy .\sc55\*.*
cls
@call SIMON2
goto quit

:quit
exit