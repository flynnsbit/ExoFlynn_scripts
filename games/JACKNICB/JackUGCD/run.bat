:menu
@echo off
cls
echo.
echo Press 1 to launch Jack Nicklaus Unlimited Golf w/ Tandy
echo Press 2 to launch Jack Nicklaus Unlimited Golf w/ Game Blaster
echo Press 3 to launch Jack Nicklaus Unlimited Golf w/ Adlib
echo Press 4 to launch Jack Nicklaus Unlimited Golf w/ MT-32
echo Press 5 to launch the Jack Nicklaus Unlimited Course Design w/ Tandy
echo Press 6 to launch the Jack Nicklaus Unlimited Course Design w/ Game Blaster
echo Press 7 to launch the Jack Nicklaus Unlimited Course Design w/ Adlib
echo Press 8 to launch the Jack Nicklaus Unlimited Course Design w/ MT-32
echo Press 9 to Quit
echo.
choice /c:123456789 /n

if errorlevel = 9 goto end
if errorlevel = 8 goto dMT32
if errorlevel = 7 goto dSB16
if errorlevel = 6 goto dGB
if errorlevel = 5 goto dTANDY
if errorlevel = 4 goto MT32
if errorlevel = 3 goto SB16
if errorlevel = 2 goto GB
if errorlevel = 1 goto TANDY

:TANDY
cls
@golf V TANDY
goto menu

:GB
CONFIG -set "sbtype=gb"
cls
@golf V CMS
goto menu

:SB16
cls
@golf V ADLIB
goto menu

:MT32
cls
@golf V MIDI1
goto menu

:dTANDY
cls
@design V TANDY
goto menu

:dGB
CONFIG -set "sbtype=gb"
cls
@design V CMS
goto menu

:dSB16
cls
@design V ADLIB
goto menu

:dMT32
cls
@design V MIDI1
goto menu

:end