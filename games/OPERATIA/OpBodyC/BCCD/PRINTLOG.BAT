@ECHO OFF
IF NOT EXIST bc.log GOTO nolog
TYPE bc.log > PRN
GOTO done
:nolog
ECHO No log file.
:done
ECHO.
