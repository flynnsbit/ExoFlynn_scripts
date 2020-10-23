@ECHO OFF
IF NOT EXIST bc.log GOTO nolog
FIND "BC ERROR" bc.log 
GOTO done
:nolog
ECHO No log file.
:done
ECHO.
