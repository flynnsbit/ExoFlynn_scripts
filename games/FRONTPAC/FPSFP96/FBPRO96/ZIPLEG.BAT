@echo off

if %1!==! goto needparm
if %2!==! goto needparm

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
if %3!==! goto needparm
if "%3"=="*" goto needparm
pkzip -rp -&v %1:%2 %3*.* -x*.zip
goto end

:drivecol
if %3!==! goto needparm
if "%3"=="*" goto needparm
pkzip -rp -&v %1%2 %3*.* -x*.zip
goto end

:needparm
echo.
echo  ZIPLEG will backup an entire league in progress, including the highlight
echo  files, using PKWare's PKZIP file compression software. You must have the
echo  PKZIP (version 2.x or higher) program in your computer's file search path.
echo.
echo  The proper syntax is:
echo.
echo     ZIPLEG [floppy drive] ZIPFILE LEAGUE
echo.
echo        [floppy drive] is an optional floppy drive letter 
echo        ZIPFILE is the name of the ZIP file you wish to create.  
echo        LEAGUE is the unique portion of the association's filename.
echo.
echo  Example:  ZIPLEG A: NFLBAK NFL
echo.
echo   will zip all leagues that have a filename that begins with NFL into a 
echo   file on your A: drive using the name NFLBAK.ZIP.
echo.
echo   Specifying "NFLPI95" would get all leagues that have a filename that 
echo   begins with "NFLPI95".
echo.
echo  use UNZIPLEG to unzip leagues.
echo.
:end
