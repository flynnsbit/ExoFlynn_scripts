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
ECHO � > PRN
CLS
ECHO.
ECHO.
ECHO Finished.
ECHO.
GOTO END

