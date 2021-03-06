:menu
@echo off
cls
echo.
echo Press 1 for Lollypop w/ SoundBlaster
echo Press 2 for Lollypop w/ MT-32
echo Press 3 for Lollypop (CD Version)
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto CDA
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@LollyPop.com -A
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@LollyPop.com -R
goto quit

:CDA
CONFIG -set "mididevice=mt32"
CD LOLLY
cls
@call lolly
goto quit

:quit
exit