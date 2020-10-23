:menu
@echo off
cls
echo.
echo Press 1 for Hard Nova w/ Tandy
echo Press 2 for Hard Nova w/ SoundBlaster
echo Press 3 for Hard Nova w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:TANDY
@mount c .\games\hardnova\tandy\
c:
CONFIG -set "mididevice=default"
cd hardnova
cls
@call HARDNOVA
goto quit

:SB16
@mount c .\games\hardnova\sb16\
c:
CONFIG -set "mididevice=default"
cd hardnova
cls
@call HARDNOVA
goto quit

:MT32
@mount c .\games\hardnova\mt32\
c:
cd hardnova
CONFIG -set "mididevice=mt32"
cls
@call HARDNOVA
goto quit

:quit
exit