echo off
rem
rem	Heavy Barrel-PC install file
rem
rem	Copyright (c) 1988 by Quicksilver Software, Inc.
rem	All rights reserved.
rem
rem	written by David Steffen. 89/05/12 15:37:35
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
if "%3" == "/u" goto uninstall
%1

echo.
echo.
echo.
echo.
echo.
echo Installing Heavy Barrel
echo Please wait . . .
checkfor diskspace %2 525
if errorlevel 1 goto cont1
goto diskspace
:cont1
checkfor dir %2\dataeast
if errorlevel 1 goto mdhb
md %2\dataeast
:mdhb
checkfor dir %2\dataeast\hb
if errorlevel 1 goto cdhb
md %2\dataeast\hb
:cdhb
cd %2\dataeast\hb
copy %1\inst.bat %2 >nul

%2inst %1 %2 __INSTALL_HB__

:uninstall
echo.
echo.
echo.
echo.
echo.
echo uninstalling Heavy Barrel
echo Please wait . . .
cd %2\dataeast\hb
%2inst %1 %2 /u

:help
cls
echo.
echo.
echo.     To run the INSTALL batch file, use the following syntax:
echo.
echo.          INSTALL source: destination:
echo.
echo.     where destination is the letter of the hard disk on which 
echo.     to install the program, followed by a colon, and source is 
echo.     the floppy disk drive that you are installing from, followed
echo.     by a colon.
echo.
echo.
echo. EXAMPLE:
echo.          INSTALL a: c:                Installs program on hard disk
echo.          INSTALL a: c: /u             Removes program from hard disk
echo.
goto exit

:diskspace
cls
echo.
echo.
echo.     To install Heavy Barrel you must have at least 587K free on
echo.     the target disk.
echo.
echo.
echo.
:exit
