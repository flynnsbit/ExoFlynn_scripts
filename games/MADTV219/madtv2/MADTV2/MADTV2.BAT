@echo off
if exist hmiset.cfg goto start
hmisetup.exe
if not exist hmiset.cfg goto noconfig
:start
game.exe
goto end

:noconfig
echo. 
echo Bitte Soundkarte im Soundsetup einstellen und
echo Konfiguration abspeichern.
echo.  
:end
