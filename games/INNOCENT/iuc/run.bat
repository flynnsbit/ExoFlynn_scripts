:menu
@echo off
cls
echo.
echo Press 1 for Innocent Until Caught w/ SoundBlaster
echo Press 2 for Innocent Until Caught w/ MT32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB

:SB
copy .\sb\innocent.ini .\
cls
@call start
goto quit
cls

:MT32
copy .\mt32\innocent.ini .\
cls
@call start
goto quit
cls

:quit
exit