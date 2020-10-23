:menu
@echo off
cls
echo.
echo Press 1 for Ten Nights of Killing and Mayhem at F.J.B. II w/ SoundBlaster
echo Press 2 for Ten Nights of Killing and Mayhem at F.J.B. II w/ MT-32
echo Press 3 for Ten Nights of Killing and Mayhem at F.J.B. II w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del MIDPAK.ADV
del MIDPAK.COM
copy .\sb16\*.*
cls
@call GOTNO
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del MIDPAK.ADV
del MIDPAK.COM
copy .\mt32\*.*
cls
@call GOTNO
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del MIDPAK.ADV
del MIDPAK.COM
copy .\sc55\*.*
cls
@call GOTNO
goto quit

:quit
exit