:menu
@echo off
cls
echo.
echo Press 1 for Castlevania w/ PC Speaker
echo Press 2 for Castlevania w/ Tandy 1000
echo Press 3 for Castlevania w/ SoundBlaster
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SB16
if errorlevel = 2 goto TANDY
if errorlevel = 1 goto PC

:SB16
cls
@CEGA.EXE ADL
goto quit

:TANDY
cls
@CEGA.EXE TDY 
goto quit

:PC
cls
@CEGA.EXE IBM 
goto quit

:quit
exit