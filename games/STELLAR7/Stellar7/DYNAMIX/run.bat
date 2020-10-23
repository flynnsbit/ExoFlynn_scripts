:menu
@echo off
cls
echo.
echo Press 1 for Stellar 7 w/ SoundBlaster
echo Press 2 for Stellar 7 w/ MT-32
echo Press 3 for Stellar 7 w/ CD Audio
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
d:
cls
@STELLAR7 /G:1 /A:7 /S:3 /P:C:\DYNAMIX\
goto quit

:MT32
CONFIG -set "mididevice=mt32"
d:
cls
@STELLAR7 /G:1 /A:4 /S:4 /P:C:\DYNAMIX\
goto quit

:CDA
CONFIG -set "mididevice=default"
copy .\cda\*.* .\
d:
cls
@STELLAR7 /G:1 /A:8 /S:3 /P:C:\DYNAMIX\
goto quit

:quit
exit