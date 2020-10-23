@echo off

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
if "%1"=="" goto needparm
if "%2"=="" goto needparm
if "%2"=="*" goto needparm

if "%1"=="a" goto drive
if "%1"=="A" goto drive
if "%1"=="b" goto drive
if "%1"=="B" goto drive
if "%1"=="a:" goto drivecol
if "%1"=="A:" goto drivecol
if "%1"=="b:" goto drivecol
if "%1"=="B:" goto drivecol

pkzip -rp %1 %2*.* -x*.zip
goto end

:drive
if "%3"=="" goto needparm
if "%3"=="*" goto needparm
pkzip -rp -&v %1:%2 %3*.* -x*.zip
goto end

:drivecol
if "%3"=="" goto needparm
if "%3"=="*" goto needparm
pkzip -rp -&v %1%2 %3*.* -x*.zip
goto end

:needparm
echo  This batch file will backup an entire league in progress, including
echo  the highlight files, using PKWare's PKZIP file compression software.
echo  You must have the PKZIP (version 2.x or higher) program in your
echo  computer's file search path.
echo.
echo  The proper syntax is:
echo     ZIPLEG [floppy drive] ZIPFILE LEAGUE
echo.
echo  [floppy drive] is an optional floppy drive letter (with or without
echo  the colon).  Specifying a floppy drive letter here allows the
echo  backup to span multiple disks.
echo.
echo  ZIPFILE is the name of the ZIP file you wish to create.  You may
echo  specify a drive and/or directory as part of the filename.  PKZIP
echo  will assume a ZIP extension, although you may specify an extension
echo  other than ZIP if you wish.
echo.
echo  LEAGUE is the unique portion of the association's filename.
echo  Specifying "NFL", for instance, would get all leagues that have
echo  a filename that begins with "NFL".  Specifying "NFLPA94" would get
echo  all leagues that have a filename that begins with "NFLPA94".
echo.
echo  UNZIPLEG will restore previously backed up leagues.
:end
