@ECHO OFF
IF EXIST bc.log ERASE bc.log
bccd %1 %2 %3 %4
IF NOT EXIST bc.log GOTO done
ECHO. >> bc.log
MEM >> bc.log
ECHO. >> bc.log
DIR >> bc.log
ECHO. >> bc.log
VER >> bc.log
ECHO. >> bc.log
IF NOT EXIST \config.sys   GOTO noconfig
TYPE \config.sys >> bc.log
ECHO. >> bc.log
:noconfig
IF NOT EXIST \autoexec.bat GOTO noautoexec
TYPE \autoexec.bat >> bc.log
ECHO. >> bc.log
:noautoexec
:done
ECHO.
