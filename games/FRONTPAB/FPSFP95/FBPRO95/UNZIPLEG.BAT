@echo off
if "%1"=="" goto needparm
if "%1"=="?" goto needparm
if "%1"=="/?" goto needparm
if "%1"=="h" goto needparm
if "%1"=="/h" goto needparm
if "%1"=="help" goto needparm
if "%1"=="/help" goto needparm
if "%1"=="H" goto needparm
if "%1"=="/H" goto needparm
if "%1"=="HELP" goto needparm
if "%1"=="/HELP" goto needparm

if "%1"=="*" goto needparm
if "%1"=="*.*" goto needparm
if not exist %1*.* goto needparm
if "%1"=="" goto needparm

pkunzip -d %1
goto end

:needparm
echo  This batch file will restore the league files backed up with the
echo  ZIPLEG batch file, using PKWare's PKUNZIP file decompression
echo  software.  You must have the PKUNZIP (version 2.0 or
echo  higher) program in your computer's file search path.
echo.
echo  The proper syntax is:
echo     UNZIPLEG ZIPFILE
echo.
echo  ZIPFILE is the name of the ZIP file you wish to restore. If the
echo  file is on a floppy disk, you must specify the drive letter and a
echo  colon (Ex. B:) for the batch file to find the backup ZIP file.
echo.
echo  ZIPLEG will back-up the league files for you.
:end
