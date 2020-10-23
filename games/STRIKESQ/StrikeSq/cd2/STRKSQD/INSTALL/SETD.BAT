echo off
cls
echo "Loading SETD for STRIKE SQUAD...
if exist %1:\STRKSQD\setd.exe goto custom      
if not exist d:\STRKSQD\setd.exe goto error
APPEND d:\STRQSQD /x:on /path:on
goto start
echo on
:error
echo Can't find STRIKE SQUAD Directory to run SETD!
echo.    
echo If your CD-ROM is NOT drive D:, specify the drive when
echo you type SETD. For example, If your CD-ROM drive is drive E:
echo type SETD E
goto end
:custom
append %1:\STRKSQD /X:ON /PATH:ON
:start
if exist soundrv.com erase soundrv.com
REM      "Loading SETD for STRIKE SQUAD...
SETD.EXE
:end
append ;
