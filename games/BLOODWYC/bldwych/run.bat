:menu
@echo off
cls
echo.
echo Press 1 for Bloodwych w/ Adlib
echo Press 2 for Bloodwych w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd BWYCH
cls
echo.
echo Choose A for Adlib
echo.
@BWYCH
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd BWYCH
cls
echo.
echo Choose R for Roland
echo.
@BWYCH
goto quit

:quit
exit