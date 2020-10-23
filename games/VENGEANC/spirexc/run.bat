:menu
@echo off
cls
echo.
echo Press 1 for Spirit of Excalibur w/ Tandy
echo Press 2 for Spirit of Excalibur w/ Game Blaster
echo Press 3 for Spirit of Excalibur w/ SoundBlaster
echo Press 4 for Spirit of Excalibur w/ MT-32
echo Press 5 for Spirit of Excalibur w/ CD Audio
echo Press 6 to Quit
echo.
choice /C:123456 /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 5 goto CDA
if errorlevel = 4 goto MT32
if errorlevel = 3 goto SB16
if errorlevel = 2 goto CMS
if errorlevel = 1 goto TANDY

:TANDY
CONFIG -set "mididevice=default"
copy .\tandy\*.* .\
cls
@START
@EXCAL
goto quit

:CMS
CONFIG -set "sbtype=gb"
CONFIG -set "mididevice=default"
copy .\cms\*.* .\
cls
@START
@EXCAL
goto quit

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@START
@EXCAL
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@START
@EXCAL
goto quit

:CDA
CONFIG -set "mididevice=default"
cd SPIRIT
cls
@call EXCAL
goto quit

:quit
exit