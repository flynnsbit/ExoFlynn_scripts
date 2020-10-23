echo off
rem
rem	Power Drift install batch file
rem
rem	Copyright (c) 1988 by Interactive Designs
rem	All rights reserved.
rem
rem	09 February 1990
rem
if %2: == : goto help
if %1: == : goto help
if %2 == C: goto srcok
if %2 == D: goto srcok
if %2 == E: goto srcok
if %2 == F: goto srcok
if %2 == G: goto srcok
if %2 == H: goto srcok
if %2 == I: goto srcok
if %2 == J: goto srcok
if %2 == K: goto srcok
if %2 == L: goto srcok
if %2 == M: goto srcok
if %2 == N: goto srcok
if %2 == O: goto srcok
if %2 == P: goto srcok

if %2 == c: goto srcok
if %2 == d: goto srcok
if %2 == e: goto srcok
if %2 == f: goto srcok
if %2 == g: goto srcok
if %2 == h: goto srcok
if %2 == i: goto srcok
if %2 == j: goto srcok
if %2 == k: goto srcok
if %2 == l: goto srcok
if %2 == m: goto srcok
if %2 == n: goto srcok
if %2 == o: goto srcok
if %2 == p: goto srcok

goto help


:srcok
if %1 == A: goto dstok
if %1 == B: goto dstok
if %1 == a: goto dstok
if %1 == b: goto dstok
goto help

:dstok

%1
cls
echo.
echo.
echo.
echo.
echo.
echo Installing Power Drift
echo Please wait . . .
checkfor diskspace %2 940
if errorlevel 1 goto cont1
goto diskspace
:cont1
checkfor dir %2\PDrift
if errorlevel 1 goto cdPDrift
md %2\PDrift
:cdPDrift
cd %2\PDrift
copy %1\*.* %2\PDrift >nul

%2pdinst %1 %2 __INSTALL_PDRIFT__


:help
cls
echo.
echo.
echo     To run the INSTALL batch file, use the following syntax:
echo.
echo          INSTALL source: destination:
echo.
echo     where destination is the letter of the hard disk on which 
echo     to install the program, followed by a colon, and source is 
echo     the floppy disk drive that you are installing from, followed
echo     by a colon.
echo.
echo.
echo EXAMPLE:
echo          INSTALL a: c:
echo.
goto exit

:diskspace
cls
echo.
echo.
echo     To install Power Drift you must have at least
echo     940K free on the target disk.
echo.
echo.
echo.
:exit
