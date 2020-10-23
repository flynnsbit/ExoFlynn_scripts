cls 
@echo off
if "%1"=="" goto error
if "%2"=="" goto error
echo Full install will copy the game to \NOS on your hard drive 
echo Partial install will allow you to run the game off th CD
echo Do you want a partial install? (type N for full install)
echo [Y,N]
mychoice
if not errorlevel 1 goto fullinstallc
MD %2\NOS 
if "%1"=="c:" goto cpath
if "%1"=="C:" goto cpath
if "%1"=="d:" goto dpath
if "%1"=="D:" goto dpath
if "%1"=="e:" goto epath
if "%1"=="E:" goto epath
if "%1"=="f:" goto fpath
if "%1"=="F:" goto fpath
if "%1"=="g:" goto gpath
if "%1"=="G:" goto gpath
if "%1"=="h:" goto hpath
if "%1"=="H:" goto hpath
if "%1"=="i:" goto ipath
if "%1"=="I:" goto ipath
if "%1"=="j:" goto jpath
if "%1"=="J:" goto jpath
if "%1"=="k:" goto kpath
if "%1"=="K:" goto kpath
if "%1"=="l:" goto lpath
if "%1"=="L:" goto lpath
if "%1"=="m:" goto mpath
if "%1"=="M:" goto mpath
if "%1"=="n:" goto npath
if "%1"=="N:" goto npath
if "%1"=="o:" goto opath
if "%1"=="O:" goto opath
if "%1"=="p:" goto ppath
if "%1"=="P:" goto ppath
if "%1"=="q:" goto qpath
if "%1"=="Q:" goto qpath
if "%1"=="r:" goto rpath
if "%1"=="R:" goto rpath
if "%1"=="s:" goto spath
if "%1"=="S:" goto spath
if "%1"=="t:" goto tpath
if "%1"=="T:" goto tpath
if "%1"=="u:" goto upath
if "%1"=="U:" goto upath
if "%1"=="v:" goto vpath
if "%1"=="V:" goto vpath
if "%1"=="w:" goto wpath
if "%1"=="W:" goto wpath
if "%1"=="y:" goto xpath
if "%1"=="X:" goto xpath
if "%1"=="x:" goto ypath
if "%1"=="Y:" goto ypath
if "%1"=="z:" goto zpath
if "%1"=="Z:" goto zpath
goto driveerror
:cpath
COPY encpathc.cfg %2\nos\engnpath.cfg
goto ok1
:dpath
COPY encpathd.cfg %2\nos\engnpath.cfg
goto ok1
:epath
COPY encpathe.cfg %2\nos\engnpath.cfg
goto ok1
:fpath
COPY encpathf.cfg %2\nos\engnpath.cfg
goto ok1
:gpath
COPY encpathg.cfg %2\nos\engnpath.cfg
goto ok1
:hpath
COPY encpathh.cfg %2\nos\engnpath.cfg
goto ok1
:ipath
COPY encpathi.cfg %2\nos\engnpath.cfg
goto ok1
:jpath
COPY encpathj.cfg %2\nos\engnpath.cfg
goto ok1
:kpath
COPY encpathk.cfg %2\nos\engnpath.cfg
goto ok1
:lpath
COPY encpathl.cfg %2\nos\engnpath.cfg
goto ok1
:mpath
COPY encpathm.cfg %2\nos\engnpath.cfg
goto ok1
:npath
COPY encpathn.cfg %2\nos\engnpath.cfg
goto ok1
:opath
COPY encpatho.cfg %2\nos\engnpath.cfg
goto ok1
:ppath
COPY encpathp.cfg %2\nos\engnpath.cfg
goto ok1
:qpath
COPY encpathq.cfg %2\nos\engnpath.cfg
goto ok1
:rpath
COPY encpathr.cfg %2\nos\engnpath.cfg
goto ok1
:spath
COPY encpaths.cfg %2\nos\engnpath.cfg
goto ok1
:tpath
COPY encpatht.cfg %2\nos\engnpath.cfg
goto ok1
:upath
COPY encpathu.cfg %2\nos\engnpath.cfg
goto ok1
:vpath
COPY encpathv.cfg %2\nos\engnpath.cfg
goto ok1
:wpath
COPY encpathw.cfg %2\nos\engnpath.cfg
goto ok1
:xpath
COPY encpathx.cfg %2\nos\engnpath.cfg
goto ok1
:ypath
COPY encpathy.cfg %2\nos\engnpath.cfg
goto ok1
:zpath
COPY encpathz.cfg %2\nos\engnpath.cfg
:ok1
MD %2\NOS\ENGINE
copy ENGINE\*.mdi %2\nos\engine
copy ENGINE\*.dig %2\nos\engine
copy ENGINE\*.txt %2\nos\engine
copy ENGINE\*.lst %2\nos\engine
copy ENGINE\sample.* %2\nos\engine
copy *.lst %2\nos
copy ENGINE\*.xmi %2\nos\engine
copy x32test.exe %2\nos
copy ENGINE\nos.exe %2\nos\engine
copy ENGINE\setsound.exe %2\nos\engine
copy *.bat %2\nos
goto cdone
:fullinstallc
MD %2\NOS 
XCOPY *.* %2\NOS /s
del %2\nos\engp*.cfg
del %2\nos\encp*.cfg
if "%2"=="c:" goto cpathc
if "%2"=="C:" goto cpathc
if "%2"=="d:" goto dpathc
if "%2"=="D:" goto dpathc
if "%2"=="e:" goto epathc
if "%2"=="E:" goto epathc
if "%2"=="f:" goto fpathc
if "%2"=="F:" goto fpathc
if "%2"=="g:" goto gpathc
if "%2"=="G:" goto gpathc
if "%2"=="h:" goto hpathc
if "%2"=="H:" goto hpathc
if "%2"=="i:" goto ipathc
if "%2"=="I:" goto ipathc
if "%2"=="j:" goto jpathc
if "%2"=="J:" goto jpathc
if "%2"=="k:" goto kpathc
if "%2"=="K:" goto kpathc
if "%2"=="l:" goto lpathc
if "%2"=="L:" goto lpathc
if "%2"=="m:" goto mpathc
if "%2"=="M:" goto mpathc
if "%2"=="n:" goto npathc
if "%2"=="N:" goto npathc
if "%2"=="o:" goto opathc
if "%2"=="O:" goto opathc
if "%2"=="p:" goto ppathc
if "%2"=="P:" goto ppathc
if "%2"=="q:" goto qpathc
if "%2"=="Q:" goto qpathc
if "%2"=="r:" goto rpathc
if "%2"=="R:" goto rpathc
if "%2"=="s:" goto spathc
if "%2"=="S:" goto spathc
if "%2"=="t:" goto tpathc
if "%2"=="T:" goto tpathc
if "%2"=="u:" goto upathc
if "%2"=="U:" goto upathc
if "%2"=="v:" goto vpathc
if "%2"=="V:" goto vpathc
if "%2"=="w:" goto wpathc
if "%2"=="W:" goto wpathc
if "%2"=="y:" goto xpathc
if "%2"=="X:" goto xpathc
if "%2"=="x:" goto ypathc
if "%2"=="Y:" goto ypathc
if "%2"=="z:" goto zpathc
if "%2"=="Z:" goto zpathc
goto driveerrorc
:cpathc
COPY engpathc.cfg %2\nos\engnpath.cfg
goto ok1c
:dpathc
COPY engpathd.cfg %2\nos\engnpath.cfg
goto ok1c
:epathc
COPY engpathe.cfg %2\nos\engnpath.cfg
goto ok1c
:fpathc
COPY engpathf.cfg %2\nos\engnpath.cfg
goto ok1c
:gpathc
COPY engpathg.cfg %2\nos\engnpath.cfg
goto ok1c
:hpathc
COPY engpathh.cfg %2\nos\engnpath.cfg
goto ok1c
:ipathc
COPY engpathi.cfg %2\nos\engnpath.cfg
goto ok1c
:jpathc
COPY engpathj.cfg %2\nos\engnpath.cfg
goto ok1c
:kpathc
COPY engpathk.cfg %2\nos\engnpath.cfg
goto ok1c
:lpathc
COPY engpathl.cfg %2\nos\engnpath.cfg
goto ok1c
:mpathc
COPY engpathm.cfg %2\nos\engnpath.cfg
goto ok1c
:npathc
COPY engpathn.cfg %2\nos\engnpath.cfg
goto ok1c
:opathc
COPY engpatho.cfg %2\nos\engnpath.cfg
goto ok1c
:ppathc
COPY engpathp.cfg %2\nos\engnpath.cfg
goto ok1c
:qpathc
COPY engpathq.cfg %2\nos\engnpath.cfg
goto ok1c
:rpathc
COPY engpathr.cfg %2\nos\engnpath.cfg
goto ok1c
:spathc
COPY engpaths.cfg %2\nos\engnpath.cfg
goto ok1c
:tpathc
COPY engpatht.cfg %2\nos\engnpath.cfg
goto ok1c
:upathc
COPY engpathu.cfg %2\nos\engnpath.cfg
goto ok1c
:vpathc
COPY engpathv.cfg %2\nos\engnpath.cfg
goto ok1c
:wpathc
COPY engpathw.cfg %2\nos\engnpath.cfg
goto ok1c
:xpathc
COPY engpathx.cfg %2\nos\engnpath.cfg
goto ok1c
:ypathc
COPY engpathy.cfg %2\nos\engnpath.cfg
goto ok1c
:zpathc
COPY engpathz.cfg %2\nos\engnpath.cfg
:ok1c
:cdone
%2
CD\NOS
call setsound.bat
echo type NOS to play Nerves of Steel
goto end 

:driveerror
echo Error: %1 is not a valid drive.
goto end
:driveerrorc
echo Error: %2 is not a valid drive.
goto end

:error
echo Usage: install CD-ROM drive: hard drive:
echo Example: install d: c:
:end 
