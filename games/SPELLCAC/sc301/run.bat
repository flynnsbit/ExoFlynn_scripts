:menu
@echo off
cls
echo.
echo Press 1 for Spellcasting 301: Spring Break w/ SoundBlaster
echo Press 2 for Spellcasting 301: Spring Break w/ MT32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB

:SB
CONFIG -set "mididevice=default"
s301 BLASTER 7 220
cls
goto quit

:MT32
CONFIG -set "mididevice=mt32"
s301 BLASTER 7 220 MT32
cls
goto quit

:quit
exit