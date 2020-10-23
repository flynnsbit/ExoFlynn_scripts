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


:============= warning ================
echo                   *** II. Parties Sauvegard‚es ***
echo.
echo          Les parties sauvegard‚es sous AOD et AOD CD ne se 
echo          chargeront pas correctement dans la simulation aprŠs
echo          l'installation de la correction, … moins d'avoir
echo          sauvegard‚ la mission au port. Pour pr‚server une carriŠre
echo          sauvegard‚e en mer, ramenez votre capitaine au port et
echo          sauvegardez la partie avant d'installer la
echo          correction.
echo.
echo.
echo                 D‚sirez-vous continuer l'installation?
echo                                 (O/N)
echo.

%dirtemp%GK.COM
IF ERRORLEVEL 111 IF NOT ERRORLEVEL 112 GOTO startcopy
IF ERRORLEVEL 110 IF NOT ERRORLEVEL 111 GOTO earlyexit
IF ERRORLEVEL 79  IF NOT ERRORLEVEL 80  GOTO startcopy
IF ERRORLEVEL 78  IF NOT ERRORLEVEL 79  GOTO earlyexit



:startcopy
:next
IF NOT EXIST resource.cfg goto nosim
IF NOT EXIST SIM\NUL    goto nosim
IF NOT EXIST SHELL\NUL  goto nosim
IF NOT EXIST SOUND\NUL  goto nosim


rem ---- make sure resource file isn't already in this directory ----
IF EXIST resource.000 goto sameDir
rem -----------------------------------------------------------------


rem ---------- Unpack the files -------------
cls
echo.
echo   ********      D‚compression des fichiers en cours...       *********
echo.
copy %dirtemp%resource.000                        >nul
copy %dirtemp%resource.001
copy %dirtemp%unchunk.exe                   >nul
:============= sameDir =============
IF EXIST SIM\RADAR.SCR  goto skip000
unchunk resource.001 . > nul
unchunk resource.000 . > nul
if  ERRORLEVEL 1 goto BadChunk                    
                                                  
rem ------- copy language specific files --------
copy french\language.txt  sim\language.txt       >nul
copy french\radiolog.dat  sim\radiolog.dat       >nul
copy french\icons.bmp     sim\icons.bmp          >nul
copy french\vehicle.frn   shell\sw\vehicle.lst   >nul
copy french\top_comm.lst  shell\sw\top_comm.lst  >nul
rem copy french\historic.lst  shell\sw\historic.lst  >nul
copy french\shell.txt     shell\sw\shell.txt     >nul
copy french\airbase.dat   sim\airbase.dat        >nul
copy french\*.st_         shell\sw\*.*           >nul

:======= readmecheck =========
copy %dirtemp%readme.frn  french\readme.         >nul
IF EXIST readme.old goto skip1
IF EXIST readme.    copy readme. readme.old
IF EXIST read.me    copy read.me readme.old

:====  skip1 ====
IF NOT EXIST readme. goto chngname
copy french\readme.                              >nul
goto skip2
:==== chngname ====
copy french\readme. read.me                      >nul
:====  skip2  ====
cls
goto playNow
rem ------------------------------------------------------


:==== skip000 ====
unchunk resource.001 . > nul
if ERRORLEVEL 1 goto BadChunk
copy french\language.txt sim\language.txt        >nul
copy french\vehicle.lst  shell\sw\vehicle.lst    >nul
goto readmecheck


:playNow
echo.
echo.
echo        **** Installation de la correction de AOD termin‚e   ****
echo        *                                                       *
echo        * Pour jouer maintenant:                                *
echo        *    Tapez AOD et appuyez sur [ENTREE].                 *
echo        *                                                       *
echo        * Pour jouer plus tard:                                 *
echo        *    Ouvrez le r‚pertoire du jeu.                       *
echo        *    Tapez AOD et appuyez sur [ENTREE].                 *
echo        *                                                       *
echo        *********************************************************
goto done


:usage 
echo.
echo.  
echo         Pour installer la correction de AOD
echo         dans un r‚pertoire particulier:
echo         Tapez "aodpatch" suivi de la lettre du lecteur, accompagn‚e
echo         du chemin de ACES OF THE DEEP a ‚t‚ install‚.
echo.
echo         Exemple: "aodpatch C:\DYNAMIX\AOD" installera la
echo         correction dans le r‚pertoire DYNAMIX\AOD de C:.
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
echo          Impossible de trouver AOD dans le r‚pertoire pr‚cis‚.
echo          V‚rifiez le lecteur et le chemin du r‚pertoire et 
echo          relancez l'installation.
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
echo                   AOD se trouve dans C:\DYNAMIX\AOD  
goto confirm

:def2
c:
cd c:\dynamix\aodcd
cls
echo.
echo.
echo                  AOD se trouve dans C:\DYNAMIX\AODCD
goto confirm

:def3
c:
cd c:\games\aod
cls
echo.
echo.
echo                    AOD se trouve dans C:\GAMES\AOD
goto confirm

:def4
c:
cd c:\games\aodcd
cls
echo.
echo.
echo                   AOD se trouve dans C:\GAMES\AODCD
goto confirm


:confirm
echo.
echo               D‚sirez-vous installer la correction de AOD
echo                        dans ce r‚pertoire? (O/N)
echo.
echo.

%dirtemp%GK.COM
IF ERRORLEVEL 111 IF NOT ERRORLEVEL 112 GOTO warning
IF ERRORLEVEL 110 IF NOT ERRORLEVEL 111 GOTO usage
IF ERRORLEVEL 79  IF NOT ERRORLEVEL 80  GOTO warning
IF ERRORLEVEL 78  IF NOT ERRORLEVEL 79  GOTO usage
goto usage
             



:============= earlyexit ===============
%IDRIVE%:
IF EXIST aodpatch.bat goto end
cd..
goto end
rem-------------------------------------

:============= dontdoit  ===============
echo.
echo   ********      D‚compression des fichiers en cours...       *********
echo.
copy %dirtemp%unchunk.exe     > nul
copy %dirtemp%resource.001    > nul
unchunk resource.001 . > nul
goto playNow
echo.
echo.
echo.
echo                     *****      WARNING      *****
echo.
echo       La correction de AOD a d‚j… ‚t‚ install‚e
echo       dans ce r‚pertoire. Il est inutile d'installer cette correction.
echo.
echo.
goto end



rem *********** error handling and clean up *********

:BadChunk
echo          Impossible d'extraire le fichier ressources.
goto done

:Delchunk
del unchunk.exe
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
IF EXIST resource.001 goto DelRes1
SET IDRIVE=
SET DEFD=
SET DEFP=
:end

