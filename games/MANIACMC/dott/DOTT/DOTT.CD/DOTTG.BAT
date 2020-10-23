@echo off

if exist d:\dott.exe d:
if exist e:\dott.exe e:
if exist f:\dott.exe f:
if exist g:\dott.exe g:
if exist h:\dott.exe h:
if exist i:\dott.exe i:
if exist j:\dott.exe j:
if exist k:\dott.exe k:
if exist l:\dott.exe l:
if exist m:\dott.exe m:
if exist n:\dott.exe n:
if exist o:\dott.exe o:
if exist p:\dott.exe p:
if exist q:\dott.exe q:
if exist r:\dott.exe r:
if exist s:\dott.exe s:
if exist t:\dott.exe t:
if exist u:\dott.exe u:
if exist v:\dott.exe v:
if exist w:\dott.exe w:
if exist x:\dott.exe x:
if exist y:\dott.exe y:
if exist z:\dott.exe z:

if not exist dott.bat goto cd_found

echo.
echo.
echo You must insert the Day Of The Tentacle CD in your drive!
echo Please insert it and try again.
goto exit

:cd_found
cd \dott

c:\dott.cd\tentacle.exe G s220/7/8

:exit
