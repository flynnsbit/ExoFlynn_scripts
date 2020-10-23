:menu
@echo off
cls
echo.
echo Press 1 for Worlds of Ultima 2: Martian Dreams w/ SoundBlaster
echo Press 2 for Worlds of Ultima 2: Martian Dreams w/ MT32
echo Press 3 to Erase the Current Character So You Can Create a New One
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto BLANK
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del CONFIG.MD
copy .\sb16\*.*
cls
@MARTIAN
goto quit
cls

:MT32
CONFIG -set "mididevice=mt32"
del CONFIG.MD
copy .\mt32\*.*
cls
@MARTIAN
goto quit
cls

:BLANK
cls
cd savegame
del *.*
cd..
copy .\blank\savegame\*.* .\savegame\
copy .\blank\*.*
cls
echo.
echo Character Cleared
echo.
pause
goto menu

:quit
exit