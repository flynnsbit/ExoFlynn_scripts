:menu
@echo off
cls
echo.
echo Press 1 for F-14 Tomcat w/ Tandy
echo Press 2 for F-14 Tomcat w/ Game Blaster
echo Press 3 for F-14 Tomcat w/ SoundBlaster
echo Press 4 for F-14 Tomcat w/ MT-32
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto MT32
if errorlevel = 3 goto SB16
if errorlevel = 2 goto gb
if errorlevel = 1 goto tandy

:tandy
CONFIG -set "mididevice=default"
copy .\tandy\*.* .\
cls
@tc
goto quit

:gb
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
copy .\gb\*.* .\
cls
@tc
goto quit

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@tc
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@tc
goto quit

:quit
exit