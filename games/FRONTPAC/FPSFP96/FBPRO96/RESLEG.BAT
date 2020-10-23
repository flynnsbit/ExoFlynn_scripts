@echo off
if %1!==! goto needparm
if not exist %1*.lge goto needparm

if %2!==! goto nodest

if exist %2%3%1*.* copy %2%3%1*.* 
if exist %2%3%1*.* goto end

if exist %2:%3%1*.* copy %2:%3%1*.* 
if exist %2:%3%1*.* goto end

if exist %2%3\%1*.* copy %2%3\%1*.*
if exist %2%3\%1*.* goto end

if exist %2:%3\%1*.* copy %2:%3\%1*.*
if exist %2:%3\%1*.* goto end

if exist %2\%3%1*.* copy %2\%3%1*.*
if exist %2\%3%1*.* goto end

if exist %2:\%3%1*.* copy %2:\%3%1*.*
if exist %2:\%3%1*.* goto end

if exist %2\%3\%1*.* copy %2\%3\%1*.*
if exist %2\%3\%1*.* goto end

if exist %2:\%3\%1*.* copy %2:\%3\%1*.*
if exist %2:\%3\%1*.* goto end

goto needparm

:nodest
if not exist backup\%1*.* goto needparm
copy backup\%1*.*
goto end

:needparm
echo.
echo  RESLEG will restore the league files backed up with the BAKLEG
echo  file from the specified drive and/or directory
echo.
echo  The proper syntax is:
echo.
echo     RESLEG LEAGUE [drive] [directory]
echo.
echo        LEAGUE is the unique portion of the league's filename. 
echo        [drive] is an optional drive letter.
echo        [directory] is an optional directory name.  
echo.
echo.
echo  Example:  RESLEG NFL
echo.  
echo    will restore all leagues that have a filename that begin with "NFL"
echo    Specifying "NFLPI95" would restore all leagues that have a filename
echo    that begins with "NFLPI95".
echo.
echo  If you do not specify a drive or directory, your league will be copied
echo  from the BACKUP directory under the installed FBPro '96 game directory.
echo.
echo  use BACKLEG to backup leagues.
echo.
:end
