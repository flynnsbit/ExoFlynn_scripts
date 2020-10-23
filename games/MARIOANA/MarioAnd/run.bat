:menu
@echo off
cls
echo.
echo Press 1 for Mario Andretti's Racing Challenge w/ Tandy
echo Press 2 for Mario Andretti's Racing Challenge w/ SoundBlaster
echo Press 3 for Mario Andretti's Racing Challenge w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
mario
cls
@ma
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
mario
cls
@ma
goto quit

:TANDY
CONFIG -set "mididevice=default"
copy .\tandy\*.* .\
mario
cls
@ma
goto quit

:quit
exit