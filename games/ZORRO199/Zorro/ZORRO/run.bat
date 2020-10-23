:menu
@echo off
cls
echo.
echo Press 1 for Zorro w/ SoundBlaster
echo Press 2 for Zorro w/ MT-32
echo Press 3 for Zorro w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del MIDI.ADV
del MIDI.COM
copy .\sb16\*.*
cls
@ZORRO
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del MIDI.ADV
del MIDI.COM
copy .\mt32\*.*
cls
@ZORRO
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del MIDI.ADV
del MIDI.COM
copy .\sc55\*.*
cls
@ZORRO
goto quit

:quit
exit