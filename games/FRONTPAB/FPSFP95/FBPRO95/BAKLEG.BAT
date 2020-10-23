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
if not exist %1*.lge goto needparm
if "%1"=="" goto needparm

if "%2"=="" goto nodest

if exist %2%3nul copy %1*.* %2%3
if exist %2%3nul goto end

if exist %2:%3nul copy %1*.* %2:%3
if exist %2:%3nul goto end

if exist %2%3\nul copy %1*.* %2%3\
if exist %2%3\nul goto end

if exist %2:%3\nul copy %1*.* %2:%3\
if exist %2:%3\nul goto end

if exist %2\%3nul copy %1*.* %2\%3
if exist %2\%3nul goto end

if exist %2:\%3nul copy %1*.* %2:\%3
if exist %2:\%3nul goto end

if exist %2\%3\nul copy %1*.* %2\%3\
if exist %2\%3\nul goto end

if exist %2:\%3\nul copy %1*.* %2:\%3\
if exist %2:\%3\nul goto end

goto needparm

:nodest
if not exist backup\nul md backup
copy %1*.* backup
goto end

:needparm
echo  This batch file will copy the league files for the specified FBPro
echo  league(s) to a target drive and/or directory.
echo.
echo  The proper syntax is:
echo     BAKLEG LEAGUE [drive] [directory]
echo.
echo  [drive] is an optional drive letter (with or without the colon).
echo  [directory] is an optional directory name.  The drive and directory
echo  may be specified as a single parameter.
echo.
echo  If you do not specify a drive or directory, your league will be copied
echo  to the BACKUP directory under the installed FBPro '95 game directory.
echo.
echo  LEAGUE is the unique portion of the league's filename.  Specifying
echo  "NFL", for example, would backup all leagues that have a filename that
echo  begins with "NFL".  Specifying "NFLPA94" would get all leagues that
echo  have a filename that begins with "NFLPA94".
echo.
echo  RESLEG will restore previously backed up leagues.
:end
