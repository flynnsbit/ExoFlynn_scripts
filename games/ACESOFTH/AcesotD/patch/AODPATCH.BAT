@echo off
mode co80
rem ****************************************************************
rem *
rem * Batch file to install the AOD patch disk to a hard drive
rem *
rem * copyright 1995 Dynamix 
rem ****************************************************************

:getCurDir
IF NOT EXIST patfiles\nul goto sameDir
cd patfiles
:==== sameDir ====
IF NOT EXIST cddat.dat goto fmissing
copy cddat.dat tempcd.bat>nul
CD >> tempcd.bat

CALL tempcd.bat
IF EXIST %dirtemp%tempcd.bat goto langSel
IF EXIST %dirtemp%\tempcd.bat goto addslash
echo.
echo Unable to create environment variable
echo Install failed ( You may be out of DOS environment space ).
echo.
goto end

:addslash
rem ------------ append a backslash to the directory name variable -----
SET dirtemp=%dirtemp%\
goto langSel


:langSel
rem --- get rid of the temporary file -------
del tempcd.bat

cls
echo.
echo.
echo      ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄ   AOD PATCH INSTALLATION  ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo      ³                 Copyright 1995 Dynamix                  ³
echo      ³                                                         ³
echo      ³                                                         ³
echo      ³  If you want to run the program in English, press 'E'.  ³
echo      ³                                                         ³
echo      ³ Pour utiliser le programme en fran‡ais, appuyez sur 'F'.³
echo      ³                                                         ³
echo      ³   Um das Spiel in Deutsch zu spielen, 'D' eingeben.     ³
echo      ³                                                         ³
echo      ³                                                         ³
echo      ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo.
echo.


GK.COM

:checkKey
IF ERRORLEVEL 113 IF NOT ERRORLEVEL 114 GOTO end
IF ERRORLEVEL 102 IF NOT ERRORLEVEL 103 GOTO French
IF ERRORLEVEL 101 IF NOT ERRORLEVEL 102 GOTO English
IF ERRORLEVEL 100 IF NOT ERRORLEVEL 101 GOTO German
IF ERRORLEVEL 81  IF NOT ERRORLEVEL 82  GOTO end
IF ERRORLEVEL 70  IF NOT ERRORLEVEL 71  GOTO French
IF ERRORLEVEL 69  IF NOT ERRORLEVEL 70  GOTO English
IF ERRORLEVEL 68  IF NOT ERRORLEVEL 69  GOTO German
IF EXIST aodpatch.bat goto end
cd..
goto end

:English
cls
call eng.bat %dirtemp% %1
goto end

:German
cls
call ger.bat %dirtemp% %1
goto end

:French 
cls
call frn.bat %dirtemp% %1
goto end

:fmissing
cls
echo.
echo   Patch install could not locate the file CDDAT.DAT. Please check
echo   to make sure you have all the necessary patch files before running
echo   patch.bat again.
echo.
goto end

:end
SET dirtemp=
