@echo off


rem ------ first find out what drive we're installing from ---------
call CHUNK\DRIVE.EXE
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



:skipit
if '%1' == '' goto chkdef

rem ----  extract the destination drive letter and path from command line

IF NOT '%2'=='' GOTO ChangeD
IF NOT EXIST %1\NUL GOTO BadDir
FOR %%f IN (/%1) DO %0 %%f %1


:========= ChangeD ===========
%1:
CD %2 > NUL

rem --------- make sure they've saved careers properly -----------
goto warning 


:startcopy
:next
IF NOT EXIST resource.cfg goto nosim
IF NOT EXIST SIM\NUL    goto nosim
IF NOT EXIST SHELL\NUL  goto nosim
IF NOT EXIST SOUND\NUL  goto nosim

rem ============ Unpack the files =============
cls
echo.
echo        *************      Unpacking Files...       *************
echo.
copy %IDRIVE%:resource.000              >nul
copy %IDRIVE%:chunk\unchunk.exe         >nul
unchunk resource.000 . > nul
if  ERRORLEVEL 1 goto BadChunk

rem ===== copy language specific files =========
IF EXIST ENGLISH\NUL goto copystuff
mkdir english > nul
:======= copystuff =========
copy %IDRIVE%:chunk\readme.eng english\readme.  >nul
IF EXIST readme.old goto skip1
IF EXIST readme.    copy readme. readme.old
IF EXIST read.me    copy read.me readme.old

:skip1
IF NOT EXIST readme. goto chngname
@copy english\readme.                >nul
goto skip2
:chngname
@copy english\readme. read.me        >nul











:skip2
cls
goto playNow



IF EXIST SAVE\NUL  goto CDVERSION
IF NOT EXIST SIM\SAVE\NUL  goto nosim
goto playNow


:CDVERSION


:playNow
echo.
echo.
echo        ***********   AOD Mission Disk Installed !   ************
echo        *                                                       *
echo        *                                                       *
echo ÿ      *          To play NOW:                                 *
echo ÿ      *               Type AOD and press [ENTER].             *
echo        *                                                       *
echo ÿ      *          To play LATER:                               *
echo ÿ      *               CD to the game directory.               *
echo ÿ      *               Type AOD and press [ENTER].             *
echo        *                                                       *
echo        *   If you should ever need to change your sound card   *
echo        *   selection or settings, CD to the game directory     *
echo        *   and run SOUNDSET again.                             *
echo        *********************************************************
goto done


:usage   
echo To install AOD expansion disk to a specific directory name:
echo.
echo Type "install" followed by the drive letter and path
echo where ACES OF THE DEEP is installed.
echo.
echo For example: "install C:\DYNAMIX\AOD" will attempt to install the
echo mission disk to the DYNAMIX\AOD directory on the C drive.
echo.
echo.
%IDRIVE%:
goto end


:BadDir
:nosim
:noshell
cls
echo.
echo.
echo   An installed version of AOD was not found in the specified
echo   directory. Please check the drive and directory path and 
echo   try install again.
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
echo.
echo                      AOD found at C:\DYNAMIX\AOD  
goto confirm

:def2
c:
cd c:\dynamix\aodcd
cls
echo.
echo.
echo.
echo                     AOD found at C:\DYNAMIX\AODCD
goto confirm

:def3
c:
cd c:\games\aod
cls
echo.
echo.
echo.
echo                      AOD found at C:\GAMES\AOD
goto confirm

:def4
c:
cd c:\games\aodcd
cls
echo.
echo.
echo.
echo                      AOD found at C:\GAMES\AODCD
goto confirm


:confirm
echo.
echo  Do you wish to install the AOD expansion disk to this directory? (Y/N)
echo.
echo.


%IDRIVE%:\CHUNK\GK.COM
IF ERRORLEVEL 121 IF NOT ERRORLEVEL 122 GOTO warning
IF ERRORLEVEL 110 IF NOT ERRORLEVEL 111 GOTO usage
IF ERRORLEVEL 89  IF NOT ERRORLEVEL 90  GOTO warning
IF ERRORLEVEL 78  IF NOT ERRORLEVEL 79  GOTO usage
goto usage


:=========== warning ==============
echo                     ******   Saved Games   ******
echo. 
echo  Career games saved under AoD or AoD CD will not load properly into your 
echo  simulation once you have installed the Expansion Disk, unless you saved 
echo  the game while in port.  To preserve a career saved while at sea you 
echo  must first bring your skipper into port and save the game before you 
echo  install the expansion disk.
echo.
echo                      Continue with install? (Y/N)
echo.
echo.

%IDRIVE%:\CHUNK\GK.COM
IF ERRORLEVEL 121 IF NOT ERRORLEVEL 122 GOTO startcopy
IF ERRORLEVEL 110 IF NOT ERRORLEVEL 111 GOTO earlyexit
IF ERRORLEVEL 89  IF NOT ERRORLEVEL 90  GOTO startcopy
IF ERRORLEVEL 78  IF NOT ERRORLEVEL 79  GOTO earlyexit


:======= earlyexit ============
%IDRIVE%:
goto end


rem *********** error handling and clean up *********

:BadChunk
echo unable to extract resource file.
goto done

:Delchunk
del unchunk.exe
goto done

:DelRes
del resource.000
goto done

:done
IF EXIST unchunk.exe goto Delchunk
IF EXIST resource.000 goto DelRes
SET IDRIVE=
SET DEFD=
SET DEFP=
:end
