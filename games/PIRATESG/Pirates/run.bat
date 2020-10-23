:menu
@echo off
cls
echo.
echo Press 1 for Pirates! Gold w/ SoundBlaster 16
echo Press 2 for Pirates! Gold w/ SoundBlaster Pro (DualOpl2)
echo Press 3 for Pirates! Gold w/ MT-32
echo Press 4 for Pirates! Gold w/ Sound Canvas
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto SC55
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16P
if errorlevel = 1 goto SB16

:SB16
copy .\sb16\*.* .\
CONFIG -set "mididevice=default"
CONFIG -set "oplmode=auto"
cls
@PIRATESG
goto quit

:SB16P
copy .\sb16\*.* .\
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=sbpro1"
CONFIG -set "oplmode=dualopl2"
cls
@PIRATESG
goto quit

:MT32
copy .\mt32\*.* .\
CONFIG -set "mididevice=mt32"
CONFIG -set "oplmode=auto"
cls
@PIRATESG
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cls
@PIRATESG
goto quit

:quit
exit