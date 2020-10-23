@echo off

rem ------ first find out what drive we're installing from ---------
call DRIVE.EXE
IF ERRORLEVEL 25 IF NOT ERRORLEVEL 26 SET IDRIVE=Z
IF ERRORLEVEL 24 IF NOT ERRORLEVEL 25 SET IDRIVE=Y
IF ERRORLEVEL 23 IF NOT ERRORLEVEL 24 SET IDRIVE=X
IF ERRORLEVEL 22 IF NOT ERRORLEVEL 23 SET IDRIVE=W
IF ERRORLEVEL 21 IF NOT ERRORLEVEL 22 SET IDRIVE=V
IF ERRORLEVEL 20 IF NOT ERRORLEVEL 21 SET IDRIVE=U
IF ERRORLEVEL 19 IF NOT ERRORLEVEL 20 SET IDRIVE=T
IF ERRORLEVEL 18 IF NOT ERRORLEVEL 19 SET IDRIVE=S
IF ERRORLEVEL 17 IF NOT ERRORLEVEL 18 SET IDRIVE=R
IF ERRORLEVEL 16 IF NOT ERRORLEVEL 17 SET IDRIVE=Q
IF ERRORLEVEL 15 IF NOT ERRORLEVEL 16 SET IDRIVE=P
IF ERRORLEVEL 14 IF NOT ERRORLEVEL 15 SET IDRIVE=O
IF ERRORLEVEL 13 IF NOT ERRORLEVEL 14 SET IDRIVE=N
IF ERRORLEVEL 12 IF NOT ERRORLEVEL 13 SET IDRIVE=M
IF ERRORLEVEL 11 IF NOT ERRORLEVEL 12 SET IDRIVE=L
IF ERRORLEVEL 10 IF NOT ERRORLEVEL 11 SET IDRIVE=K
IF ERRORLEVEL 9  IF NOT ERRORLEVEL 10 SET IDRIVE=J
IF ERRORLEVEL 8  IF NOT ERRORLEVEL 9  SET IDRIVE=I
IF ERRORLEVEL 7  IF NOT ERRORLEVEL 8  SET IDRIVE=H
IF ERRORLEVEL 6  IF NOT ERRORLEVEL 7  SET IDRIVE=G
IF ERRORLEVEL 5  IF NOT ERRORLEVEL 6  SET IDRIVE=F
IF ERRORLEVEL 4  IF NOT ERRORLEVEL 5  SET IDRIVE=E
IF ERRORLEVEL 3  IF NOT ERRORLEVEL 4  SET IDRIVE=D
IF ERRORLEVEL 2  IF NOT ERRORLEVEL 3  SET IDRIVE=C
IF ERRORLEVEL 1  IF NOT ERRORLEVEL 2  SET IDRIVE=B
IF ERRORLEVEL 0  IF NOT ERRORLEVEL 1  SET IDRIVE=A

if '%1' == '' goto usage

:skipit
if '%2' == '' goto chkdef

rem ----  extract the destination drive letter and path from command line

IF NOT '%3'=='' GOTO ChangeD
IF NOT EXIST %2\NUL GOTO BadDir
FOR %%f IN (/%2) DO %0 %1 %%f %2

:========= ChangeD ===========
%2:
CD %3 > NUL


:=========== warning ==============
echo. 
echo                     **** Gespeicherte Spiele ****
echo.
echo   Gespeicherte Karrieren in AoD oder AoD CD k”nnen nach der Installation
echo   des Patchs nicht richtig geladen werden, es sei denn sie
echo   wurden im Hafen gespeichert. Um eine Karriere zu speichern, die auf
echo   See gesichert wurde, mssen Sie Ihren Kommandanten zuerst in den
echo   Hafen bringen und das Spiel speichern, bevor Sie den Patch
echo   installieren.
echo.
echo.
echo                M”chten Sie die Installation fortsetzen?
echo                                 (J/N)
echo.

%dirtemp%GK.COM
IF ERRORLEVEL 110 IF NOT ERRORLEVEL 111 GOTO earlyexit
IF ERRORLEVEL 106 IF NOT ERRORLEVEL 107 GOTO startcopy
IF ERRORLEVEL 78  IF NOT ERRORLEVEL 79  GOTO earlyexit
IF ERRORLEVEL 74  IF NOT ERRORLEVEL 75  GOTO startcopy



:startcopy
:next
IF NOT EXIST resource.cfg goto nosim
IF NOT EXIST SIM\NUL    goto nosim
IF NOT EXIST SHELL\NUL  goto nosim
IF NOT EXIST SOUND\NUL  goto nosim


rem ---- make sure resource file isn't already in this directory ----
IF EXIST resource.000 goto sameDir
rem -----------------------------------------------------------------


rem -------------- Unpack the files ------------------
cls
echo.
echo         ***********    Dekomprimiere Dateien...     ***********
echo.
copy %dirtemp%resource.000          > nul
copy %dirtemp%resource.001          > nul
copy %dirtemp%unchunk.exe           > nul
:=========== sameDir =============
IF EXIST SIM\RADAR.SCR  goto skip000
unchunk resource.001 .        > nul
unchunk resource.000 .        > nul
if  ERRORLEVEL 1 goto BadChunk

rem ------- copy language specific files --------
copy german\language.txt  sim\language.txt       >nul
copy german\radiolog.dat  sim\radiolog.dat       >nul
copy german\vehicle.ger   shell\sw\vehicle.lst   >nul
copy german\top_comm.lst  shell\sw\top_comm.lst  >nul
rem copy german\historic.lst  shell\sw\historic.lst  >nul
copy german\shell.txt     shell\sw\shell.txt     >nul
copy german\airbase.dat   sim\airbase.dat        >nul
copy german\*.st_         shell\sw\*.*           >nul
rem ---------------------------------------------

:======= readmecheck =========
copy %dirtemp%readme.ger  german\readme.         >nul
IF EXIST readme.old goto skip1
IF EXIST readme.    copy readme. readme.old
IF EXIST read.me    copy read.me readme.old

:=== skip1    ===
IF NOT EXIST readme. goto chngname
copy german\readme.                 >nul
goto skip2
:=== chngname ===
copy german\readme. read.me         >nul
:=== skip2    ===
cls
goto playNow
rem ------------------------------------------
                                                

:==== skip000 ====
unchunk resource.001 . > nul
if ERRORLEVEL 1 goto BadChunk
copy german\language.txt sim\language.txt        >nul
copy german\vehicle.lst  shell\sw\vehicle.lst    >nul
goto readmecheck


:playNow
echo.
echo.
echo    ************************************************************
echo   *                                                            *
echo  ÿ*    Um jetzt zu spielen:                                    *
echo  ÿ*       Geben Sie ein: AOD [EINGABE].                        *
echo   *                                                            *
echo  ÿ*    Um sp„ter zu spielen:                                   *
echo  ÿ*       Wechseln Sie zum Spielverzeichnis.                   *
echo  ÿ*       Geben Sie ein: AOD [EINGABE]                         *
echo   *                                                            *
echo   *    Falls Sie Ihre Toneinstellungen sp„ter „ndern           *
echo   *    wollen, wechseln Sie zum Spielverzeichnis, und          *
echo   *    starten Sie SOUNDSET noch einmal.                       *
echo   *                                                            *
echo   *                                                            *
echo    ************************************************************
goto done


:usage   
echo   Um den AOD Patch in ein bestimmtes Verzeichnis zu
echo   installieren, geben Sie ein: "aodpatch" und dann Festplatte
echo   und Verzeichnis, in dem ACES OF THE DEEP installiert ist.
echo.
echo   Beispiel: "aodpatch C:\DYNAMIX\AOD" versucht, den Patch
echo   in das Verzeichnis DYNAMIX\AOD auf der Festplatte C zu kopieren.
echo.
echo.
%IDRIVE%:
IF EXIST aodpatch.bat goto end
cd..
goto end




:BadDir
:nosim
:noshell
cls
echo.
echo.
echo   Im angegebenen Verzeichnis wurde keine installierte Version von
echo   AOD gefunden. Bitte berprfen Sie Verzeichnis und Festplatte,
echo   und wiederholen Sie die Installation.
echo. 
echo.
echo.
echo.
goto usage


:========= chkdef ============
rem 
rem  check for aod installation in default directories

IF EXIST C:\DYNAMIX\AOD\SIM\SUBSIM.EXE   goto def1
IF EXIST C:\DYNAMIX\AODCD\SIM\SUBSIM.EXE goto def2
IF EXIST C:\GAMES\AOD\SIM\SUBSIM.EXE     goto def3
IF EXIST C:\GAMES\AODCD\SIM\SUBSIM.EXE   goto def4
goto usage


:def1
c:
cd c:\dynamix\aod
cls
echo.
echo.
echo                     AOD in C:\DYNAMIX\AOD gefunden
echo.
goto confirm

:def2
c:
cd c:\dynamix\aodcd
cls
echo.
echo.
echo                    AOD in C:\DYNAMIX\AODCD gefunden
echo.
goto confirm

:def3
c:
cd c:\games\aod
cls
echo.
echo.
echo                      AOD in C:\GAMES\AOD gefunden
ehco.
goto confirm

:def4
c:
cd c:\games\aodcd
cls
echo.
echo.
echo                     AOD in C:\GAMES\AODCD gefunden
echo.
goto confirm


:confirm
echo.
echo                 M”chten Sie den AOD Patch in dieses 
echo                   Verzeichnis installieren? (J/N)
echo.
echo.

%dirtemp%GK.COM
IF ERRORLEVEL 110 IF NOT ERRORLEVEL 111 GOTO usage
IF ERRORLEVEL 106 IF NOT ERRORLEVEL 107 GOTO warning
IF ERRORLEVEL 78  IF NOT ERRORLEVEL 79  GOTO usage
IF ERRORLEVEL 74  IF NOT ERRORLEVEL 75  GOTO warning
goto usage





:======= earlyexit ============
%IDRIVE%:
IF EXIST aodpatch.bat goto end
cd..
goto end
rem----------------------------

:======= dontdoit =============
echo.
echo         ***********    Dekomprimiere Dateien...     ***********
echo.
copy %dirtemp%unchunk.exe    > nul
copy %dirtemp%resource.001   > nul
unchunk resource.001 . >nul
goto playNow
echo.
echo.
echo.
echo                     *****      WARNING      *****
echo.
echo       Die AOD Zusatzdiskette ist bereits in diesem Verzeichnis
echo       installiert. Es ist nicht notwendig, den Patch zu installieren.
echo.
echo.
goto end


rem *********** error handling and clean up *********

:BadChunk
echo.
echo.
echo Kann AOD Dateien nicht installieren. Versuchen Sie es noch einmal, oder 
echo wenden Sie sich an den SIERRA KUNDENDIENST.
goto done

:Delchunk
@del unchunk.exe
goto done

:DelRes
del resource.000
goto done

:DelRes1
del resource.001
goto done

:done
IF EXIST unchunk.exe goto Delchunk
IF EXIST resource.000 goto DelRes
IF EXIST resoruce.001 goto DelRes1
SET IDRIVE=
SET DEFD=
SET DEFP=
:end
