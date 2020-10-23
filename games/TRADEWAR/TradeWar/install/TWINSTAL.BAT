echo off
if exist EXTERN.COM goto clean
goto main

:clean
echo Now Removing old Trade Wars 2001 files
erase tw2001.*
erase extern.com
erase tedit.com

:main
if exist EXTERN.EXE goto upgrade
if exist EXTERN.BAT goto upgrade
if exist .\tradewar\extern.exe goto upgrade
echo Now INSTALLING your Trade Wars 2002
md tradewar
cd tradewar
..\twsupp 
..\twdata 
..\twpgm
cd ..
erase twdata.exe
erase twsupp.exe
erase 2002V103.exe 
erase twpgm.exe
if exist CHAIN.TXT goto wwivin
if exist DORINFO1.DEF goto qbbsin

bigbang -locl
goto moveit

:wwivin
bigbang -wwiv
goto moveit

:qbbsin
bigbang -qbbs

:moveit

if exist CHAIN.TXT goto wwivex
if exist DORINFO1.DEF goto qbbsex

extern -locl
goto end

:wwivex
extern -wwiv
goto end

:qbbsex
extern -qbbs
goto end



:upgrade
echo Now UPGRADING your Trade Wars 2002 to version 1.03
erase tw2002.exe
erase tw2002.ovr
erase tedit.exe
erase extern.exe
erase bigbang.exe
cd tradewar
erase shipstat.dat
erase ferrengi.dat
erase avoids.dat
..\twsupp -o
..\twpgm -o
cd ..
erase twdata.exe
erase twsupp.exe
erase 2002V103.exe 
erase twpgm.exe

:end
echo on
type tradewar\install.dir

