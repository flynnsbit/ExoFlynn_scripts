echo off
cls
if exist %1:\mercs\skwid.exe goto custom      
if not exist d:\mercs\skwid.exe goto error
APPEND d:\mercs;d:\mercs\entspeak /x:on /path:on
goto start
echo on
:error
echo Can't find Tegel's Mercenaries Editor!
echo.    
echo If your CD-ROM is NOT drive D:, specify the drive when
echo you type skwid. For example, If your CD-ROM drive is device E:
echo type SKWID E
goto end
:custom
append %1:\mercs;%1:\mercs\entspeak /X:ON /PATH:ON
:start
echo "Loading Tegel's Mercenaries Editor..."
skwid.exe
:end
append ;
