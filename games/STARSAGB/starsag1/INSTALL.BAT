@echo off
rem
rem
rem
rem install.bat
rem Use this file to install Star Saga on a hard disk.
rem
rem
rem THIS BATCH FILE IS COPYRIGHT (C)1988
rem BY MASTERPLAY PUBLISHING CORPORATION
rem ALL RIGHTS RESERVED
rem
rem
rem
if "%1"=="c:" goto ok
if "%1"=="d:" goto ok
if "%1"=="e:" goto ok
if "%1"=="f:" goto ok
if "%1"=="g:" goto ok
if "%1"=="h:" goto ok
if "%1"=="i:" goto ok
if "%1"=="j:" goto ok
if "%1"=="k:" goto ok
if "%1"=="l:" goto ok
if "%1"=="m:" goto ok
if "%1"=="n:" goto ok
if "%1"=="o:" goto ok
if "%1"=="p:" goto ok
if "%1"=="q:" goto ok
if "%1"=="r:" goto ok
if "%1"=="s:" goto ok
if "%1"=="t:" goto ok
if "%1"=="u:" goto ok
if "%1"=="v:" goto ok
if "%1"=="w:" goto ok
if "%1"=="x:" goto ok
if "%1"=="y:" goto ok
if "%1"=="z:" goto ok
if "%1"=="C:" goto ok
if "%1"=="D:" goto ok
if "%1"=="E:" goto ok
if "%1"=="F:" goto ok
if "%1"=="G:" goto ok
if "%1"=="H:" goto ok
if "%1"=="I:" goto ok
if "%1"=="J:" goto ok
if "%1"=="K:" goto ok
if "%1"=="L:" goto ok
if "%1"=="M:" goto ok
if "%1"=="N:" goto ok
if "%1"=="O:" goto ok
if "%1"=="P:" goto ok
if "%1"=="Q:" goto ok
if "%1"=="R:" goto ok
if "%1"=="S:" goto ok
if "%1"=="T:" goto ok
if "%1"=="U:" goto ok
if "%1"=="V:" goto ok
if "%1"=="W:" goto ok
if "%1"=="X:" goto ok
if "%1"=="Y:" goto ok
if "%1"=="Z:" goto ok
:errmsg
echo **********************************
echo *                                *
echo *                                *
echo *      Star Saga: One(tm)        *
echo *    Hard Disk Installation.     *
echo *                                *
echo *                                *
echo * To use this program, type:     *
echo *                                *
echo *      install C: (then Enter)   *
echo *                                *
echo * or use your hard disk's drive  *
echo * letter instead if different    *
echo * from C.                        *
echo *                                *
echo **********************************
goto end
:ok
%1
mkdir %1\starsaga
cd %1\starsaga
:again
echo **********************************
echo *                                *
echo *                                *
echo * Be certain that the Star Saga  *
echo * Diskette is in drive A:        *
echo *                                *
echo *                                *
echo **********************************
pause
if exist a:starsaga.exe goto copy
goto again
:copy
copy a:*.*
if not exist %1\starsaga\starsaga.exe goto error
if not exist %1\starsaga\starsaga.hel goto error
if not exist %1\starsaga\starsaga.spo goto error
goto thatsall
:error
echo **********************************
echo *                                *
echo *                                *
echo * ERROR!                         *
echo *                                *
echo * An error has occurred while    *
echo * copying the starsaga files.    *
echo * Please check that there is     *
echo * sufficient space on your hard  *
echo * disk, and that you have the    *
echo * appropriate access priviledges.*
echo *                                *
echo * You will need at least 360K.   *
echo *                                *
echo *                                *
echo **********************************
goto end
:thatsall
echo **********************************
echo *                                *
echo *                                *
echo * ALL DONE.                      *
echo *                                *
echo *                                *
echo * You now have a directory on    *
echo * your hard disk named STARSAGA. *
echo * All the files needed to play   *
echo * the game can be found there.   *
echo * To begin the program, type:    *
echo *                                *
echo * cd \starsaga      (then Enter) *
echo *    starsaga       (then Enter) *
echo *                                *
echo *                                *
echo **********************************
:end
