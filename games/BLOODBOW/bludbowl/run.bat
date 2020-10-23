:menu
@echo off
cls
echo.
echo Press 1 for Blood Bowl w/ SoundBlaster
echo Press 2 for Blood Bowl w/ MT-32
echo Press 3 for Blood Bowl w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del BB.INF
del MUSIC.WAD
del MIDPAK.ADV
del MIDPAK.AD
del MIDPAK.COM
copy .\sb16\*.*
cls
@BB
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del BB.INF
del MUSIC.WAD
del MIDPAK.ADV
del MIDPAK.AD
del MIDPAK.COM
copy .\mt32\*.*
cls
@BB
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del BB.INF
del MUSIC.WAD
del MIDPAK.ADV
del MIDPAK.AD
del MIDPAK.COM
copy .\sc55\*.*
cls
@BB
goto quit

:quit
exit