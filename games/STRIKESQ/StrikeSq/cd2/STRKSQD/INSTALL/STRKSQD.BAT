echo off
cls
if exist %1:\STRKSQD\s.exe goto custom      
if not exist d:\STRKSQD\s.exe goto error
APPEND d:\STRKSQD;d:\STRKSQD\ENTSPEAK /X:ON /PATH:ON
goto start
echo on
:error
echo Can't find Strike Squad!
echo.    
echo If your CD-ROM is NOT drive D:, specify the drive when
echo you type STRKSQD. For example, If your CD-ROM drive is drive E:
echo type STRKSQD E
goto end
:custom
append %1:\STRKSQD;%1:\STRKSQD\ENTSPEAK /X:ON /PATH:ON
:start
if not exist soundrv.com setd.exe
echo "Loading Strike Squad..."
s.exe p %1:\STRKSQD
:end
append ;
