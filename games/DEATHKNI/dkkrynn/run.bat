:menu
@echo off
cls
echo.
echo Press 1 for Death Knights of Krynn w/ Tandy
echo Press 2 for Death Knights of Krynn w/ Game Blaster
echo Press 3 for Death Knights of Krynn w/ Adlib
echo Press 4 to Quit
echo.
echo Note: If you have Champions of Krynn installed you may transfer
echo savegame files or characters not currently in a party into
echo Death Knights of Krynn via the game interface.
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto Adlib
if errorlevel = 2 goto GB
if errorlevel = 1 goto Tandy

:Tandy
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=none"
copy .\tandy\*.* .\
cls
@start
goto quit

:GB
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
copy .\gb\*.* .\
cls
@start
goto quit

:Adlib
CONFIG -set "mididevice=default"
copy .\adlib\*.* .\
cls
@start
goto quit

:quit
exit