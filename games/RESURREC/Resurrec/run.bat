:menu
echo off
cls
echo.
echo Press 1 for Resurrection: Rise 2
echo Press 2 for Resurrection: Rise 2 Directors Cut CD
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
imgset ide10 "/cd/Resurrec/rise2_d.cue"


pause
d:
cls
rise2
goto quit

:MT32
imgset ide10 "/cd/Resurrec/rise2_1.cue"


pause
d:
cls
dircut
goto quit

:quit
exit
