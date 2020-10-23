:menu
@echo off
cls
echo.
echo Press 1 for Castles: The Northern Campaign w/ Tandy
echo Press 2 for Castles: The Northern Campaign w/ SoundBlaster
echo Press 3 for Castles: The Northern Campaign w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:TANDY
CONFIG -set "mididevice=default"
cls
@casint.exe /VGA /TANDY 
@castles1.exe 87670918 /VGA /TANDY /NOSTICK /NOTITLE 
goto quit

:SB16
CONFIG -set "mididevice=default"
cls
@casint.exe /VGA /ADLIB 
@castles1.exe 87670918 /VGA /ADLIB /NOSTICK /NOTITLE 
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@casint.exe /VGA /ROLAND 
@castles1.exe 87670918 /VGA /ROLAND /NOSTICK /NOTITLE 
goto quit

:quit
exit