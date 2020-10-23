echo off
REM =========================================================================
REM     Install.bat, DOS batch file for installing CANTON to hard disk
REM                        Shareware Version
REM                  Copyright (c) 1994 NNN Software
REM =========================================================================
echo This program installs CANTON from floppy to \NNN on your hard drive


REM -------------------------------------------------------------------------
REM check given name of hard drive

if not %1=="" goto OK1
echo ERROR: You must specify the name of your hard drive, e.g. INSTALL C:
goto End

:OK1
REM -------------------------------------------------------------------------
REM make new NNN directory; errorlevel 0 means success

MKDIR %1\NNN
if errorlevel 0 goto CopyFiles
cls
echo Error creating %1\NNN directory, do not use INSTALL program.
echo You must install CANTON manually. Sorry. 
goto End

:CopyFiles
REM -------------------------------------------------------------------------
REM copy files from floppy to %1\NNN
echo on

cls
echo Beginning Installation...

cls
echo Copying...
copy *.* %1\NNN

:UnzipFiles
cls
echo  Unzipping...
%1
cd %1\NNN
DEMO
del DEMO.exe
echo off

:End
REM -------------------------------------------------------------------------
REM exit Install.bat
echo Exiting INSTALL...

REM =========================================================================
