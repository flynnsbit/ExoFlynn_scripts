echo off
cls
if exist %1:\mercs\mercs.exe goto custom      
if not exist d:\mercs\mercs.exe goto error
APPEND d:\mercs;d:\mercs\entspeak /x:on /path:on
goto start
echo on
:error
echo Can't find Tegel's Mercenaries!
echo.    
echo If your CD-ROM is NOT drive D:, specify the drive when
echo you type MERCS. For example, If your CD-ROM drive is drive E:
echo type MERCS E
goto end
:custom
append %1:\mercs;%1:\mercs\entspeak /X:ON /PATH:ON
:start
echo "Loading Tegel's Mercenaries..."
mercs.exe
:end
append ;
