:menu
@echo off
cls
echo.
echo Press 1 for Team Suzuki w/ SoundBlaster
echo Press 2 for Team Suzuki w/ MT-32 Music
echo Press 3 for Team Suzuki w/ MT-32 FX
echo Press 4 to Quit
echo.
echo This game does not allow MT-32 Music and FX at the same time
echo during races.
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32fx
if errorlevel = 2 goto MT32m
if errorlevel = 1 goto SB16fx

:SB16fx
CONFIG -set "mididevice=default"
copy .\sb16fx\*.* .\
cls
@SUZUKI
goto quit

:MT32m
CONFIG -set "mididevice=mt32"
copy .\mt32m\*.* .\
cls
@SUZUKI
goto quit

:MT32fx
CONFIG -set "mididevice=mt32"
copy .\mt32fx\*.* .\
cls
@SUZUKI
goto quit

:quit
exit