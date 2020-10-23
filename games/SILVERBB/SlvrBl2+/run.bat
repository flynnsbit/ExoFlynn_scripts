:menu
@echo off
cls
echo.
echo Press 1 for Silverball 2 Plus w/ SoundBlaster
echo Press 2 for Silverball 2 Plus w/ Gravis Ultrasound
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto GUS
if errorlevel = 1 goto SB

:SB
del config.pin
copy .\sb\*.* .\
cls
@silver
cls
goto quit

:GUS
del config.pin
copy .\gus\*.* .\
cls
@silver
cls
goto quit

:quit
exit