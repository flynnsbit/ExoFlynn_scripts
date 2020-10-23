@echo off
cls
echo.
echo Press 1 to play Kingdom Without End in its original Adventure Book form
echo Press 2 to play Kingdom Without End ported to TADS (Cleaner looking)
echo.
choice /c:12 /N

if errorlevel = 2 goto TADS
if errorlevel = 2 goto ADVB

:ADVB
textrun kingdom.adv
goto exit

:TADS
tr kingdom.gam
goto exit

:exit