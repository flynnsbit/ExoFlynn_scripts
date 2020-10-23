@echo off
C:
cd C:\PINBALL

soundrv
@ECHO OFF
IF "%1"=="/manual" GOTO README
IF "%1"=="/MANUAL" GOTO README
IF "%1"=="/print" GOTO PRINTME
IF "%1"=="/PRINT" GOTO PRINTME
GOTO GAME

:README
soundrv u
CLS
TYPE ULTPINBL.TXT | MORE
ECHO.
ECHO.
GOTO END

:PRINTME
soundrv u
CLS
ECHO.
ECHO.
ECHO Sending Readme file to printer buffer, please wait.....
TYPE ULTPINBL.TXT > PRN
ECHO Œ > PRN
CLS
ECHO.
ECHO.
ECHO Finished.
ECHO.
GOTO END

:GAME
pmidpak
d:pin.exe d c %1 %2 %3
pmidpak u
soundrv u
if EXIST advert.doc type advert.doc
:END

echo To read the Ultimate Pinball manual, type "Pinball /manual" and press Enter.
echo To print the Ultimate Pinball manual, type "Pinball /print" and press Enter.

