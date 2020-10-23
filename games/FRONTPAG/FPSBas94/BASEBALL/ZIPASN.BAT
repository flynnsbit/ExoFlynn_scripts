@echo off
if "%1"=="a" goto drive
if "%1"=="A" goto drive
if "%1"=="b" goto drive
if "%1"=="B" goto drive
if "%1"=="a:" goto drivecol
if "%1"=="A:" goto drivecol
if "%1"=="b:" goto drivecol
if "%1"=="B:" goto drivecol
if "%1"=="*" goto needparm
if "%2"=="" goto needparm
if "%2"=="*" goto needparm

pkzip -rp %1 %2*.* -x*.h* -x*.i* -x*.j* -x*.k* -x*.l* -x*.m* -x*.n* -x*.zip
goto end

:drive
if "%3"=="" goto needparm
if "%3"=="*" goto needparm
pkzip -rp -&v %1:%2 %3*.* -x*.h* -x*.i* -x*.j* -x*.k* -x*.l* -x*.m* -x*.n* -x*.zip
goto end

:drivecol
if "%3"=="" goto needparm
if "%3"=="*" goto needparm
pkzip -rp -&v %1%2 %3*.* -x*.h* -x*.i* -x*.j* -x*.k* -x*.l* -x*.m* -x*.n* -x*.zip
goto end

:needparm
echo  This batch file will backup an association without the boxscore
echo  highlight files, using PKWare's PKZIP file compression software.
echo  You must have the PKZIP program in your computer's file search path.
echo.
echo  The proper syntax is:
echo     ZIPASN [floppy drive] ZIPFILE ASSOCIATION
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
echo  ASSOCIATION is the unique portion of the association's filename.
echo  Specifying "08", for instance, would get all associations that have
echo  a filename that begins with "08".  Specifying "08NEW" would get all
echo  associaions that have a filename that begins with "08NEW".
echo.
echo  UNZIPASN will restore previously backed up leagues.
:end
