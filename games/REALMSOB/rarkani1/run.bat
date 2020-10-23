:menu
echo off
cls
echo.
echo Press 1 for Realms of Arkania: Blade of Destiny w/ SoundBlaster
echo Press 2 for Realms of Arkania: Blade of Destiny w/ MT32
echo Press 3 for Realms of Arkania: Blade of Destiny w/ CD Audio*
echo Press 4 to Quit
echo.
echo Note: The CD Audio version is the German version of the game hacked
echo to mostly run in English. Occasional messages and the in game journal are
echo still in German.
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto German
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB

:SB
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
call blade
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
call blade
goto quit

:German
cd G


pause
imgset ide10 "/cd/rarkani1/dsa_1293.cue"


pause
cls
call blade
cd..
goto quit

:quit
exit
