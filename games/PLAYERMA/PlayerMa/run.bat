:menu
@echo off
cls
echo.
echo Press 1 for Player Manager 2 Floppy Version
echo Press 2 for Player Manager 2 CD Version
echo Press 3 for Player Manager 2 Extra
echo Press 4 to Quit
echo.
echo The CD version  is higher resolution but does not appear
echo to have in game midi music.
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto PM2E
if errorlevel = 2 goto PM2CD
if errorlevel = 1 goto PM2F

:PM2F
CONFIG -set "mididevice=default"
cd _PM2
cls
@call PM2
goto quit

:PM2CD
CONFIG -set "mididevice=default"
imgmount d .\games\playerma\cd\PM2.cue -t iso
cd PM2
cls
@call PM2
goto quit

:PM2E
CONFIG -set "mididevice=default"
imgmount d .\games\playerma\cd\PM2E.iso -t iso
cd PM2EXTRA
cls
@call PM2EXTRA
goto quit

:quit
exit