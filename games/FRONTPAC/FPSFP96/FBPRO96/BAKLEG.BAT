@echo off

if %1!==! goto usage
if not exist %1*.lge goto usage

if %2!==! goto nodest

echo.
echo  Backing up %1 to %2 %3...
echo.

if exist %2%3nul copy %1*.* %2%3
if exist %2%3nul goto end

if exist %2:%3nul copy %1*.* %2:%3
if exist %2:%3nul goto end

if exist %2%3\nul copy %1*.* %2%3
if exist %2%3\nul goto end

if exist %2:%3\nul copy %1*.* %2:%3
if exist %2:%3\nul goto end

if exist %2\%3nul copy %1*.* %2\%3
if exist %2\%3nul goto end

if exist %2:\%3nul copy %1*.* %2:\%3
if exist %2:\%3nul goto end

if exist %2\%3\nul copy %1*.* %2\%3
if exist %2\%3\nul goto end

if exist %2:\%3\nul copy %1*.* %2:\%3
if exist %2:\%3\nul goto end

md %2%3
copy %1*.* %2%3
goto end

goto usage

:nodest
if not exist backup\nul md backup
copy %1*.* backup
goto end

:usage
echo.
echo  BAKLEG will copy the league files for the specified FBPro '96
echo  league(s) to a target drive and/or directory.
echo.
echo  The proper syntax is:
echo.
echo     BAKLEG LEAGUE [drive] [directory]
echo.
echo        LEAGUE is the unique portion of the league's filename. 
echo        [drive] is an optional drive letter.
echo        [directory] is an optional directory name.  
echo.
echo.
echo  Example:  BAKLEG NFL  
echo.
echo    will backup all leagues that have a filename that begins with "NFL". 
echo    Specifying "NFLPI95" would get all leagues that have a filename that
echo    begin with "NFLPI95".
echo.
echo  If you do not specify a drive or directory, your league will be copied
echo  to the BACKUP directory under the installed FBPro '96 game directory.
echo.
echo  Use RESLEG to restore leagues.
echo.
:end
echo.
