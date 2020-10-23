@echo off
cls
echo.
echo Press 1 for Hong Kong Mahjong Pro w/ Soundblaster
echo Press 2 for Hong Kong Mahjong Pro w/ MT-32
echo Press 3 for the Tutorial
echo Press 4 to Quit
echo.
choice /C:1234 /N

if errorlevel = 4 goto end
if errorlevel = 3 goto tut
if errorlevel = 2 goto hkmjmt
if errorlevel = 1 goto hkmjsb

:hkmjsb
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@HKMJ.COM
goto quit

:hkmjmt
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@HKMJ.COM
goto quit

:tut
HKMJTUTR
goto end

:end