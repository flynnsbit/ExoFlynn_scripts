cls 
@echo off
ECHO    LHA v2.12 - Copyright (c)1988-91, Haruyasu Yoshizaki
if "%1"=="" goto error
if "%2"=="" goto error
if "%2"=="c:" goto cpath
if "%2"=="C:" goto cpath
if "%2"=="d:" goto dpath
if "%2"=="D:" goto dpath
if "%2"=="e:" goto epath
if "%2"=="E:" goto epath
if "%2"=="f:" goto fpath
if "%2"=="F:" goto fpath
if "%2"=="g:" goto gpath
if "%2"=="G:" goto gpath
if "%2"=="h:" goto hpath
if "%2"=="H:" goto hpath
COPY %1\engnpath.cfg %2\nos
echo Since your installing to a drive greater then H: you must edit 
echo NOS\engnpath.cfg replacing the word driveletter with the letter 
echo of your hard drive you installed to.
goto ok1
:cpath
COPY %1\engpathc.cfg %2\nos\engnpath.cfg
goto ok1
:dpath
COPY %1\engpathd.cfg %2\nos\engnpath.cfg
goto ok1
:epath
COPY %1\engpathe.cfg %2\nos\engnpath.cfg
goto ok1
:fpath
COPY %1\engpathf.cfg %2\nos\engnpath.cfg
goto ok1
:gpath
COPY %1\engpathg.cfg %2\nos\engnpath.cfg
goto ok1
:hpath
COPY %1\engpathh.cfg %2\nos\engnpath.cfg
:ok1
COPY %1\*.lst %2\NOS
%2
cd \nos\engine
%2\nos\lha e %1\engine.lzh 
cd \nos\engine\textures
%2\nos\lha e %1\textures.lzh
:crein1
echo Insert disk 2
pause
if not exist %1\art.lzh goto crein1
cd \nos\engine\art
%2\nos\lha e %1\art.lzh
cd \nos\engine\vocs
%2\nos\lha e %1\vocs.lzh
:crein2
echo Insert disk 3
pause
if not exist %1\maps.lzh goto crein2
COPY %1\x32test.exe %2\NOS
cd \nos\engine\maps
%2\nos\lha e %1\maps.lzh
%2
cd \nos
call setsound.bat
echo type NOS to play Nerves of Steel
goto end 
:error
ECHO Please type INSTALL source drive, destination drive
ECHO .
ECHO Example: If installing from the floppy drive A: to
ECHO          the hard drive C: please type:
ECHO .      
ECHO                   INSTALL A: C:
:end 
