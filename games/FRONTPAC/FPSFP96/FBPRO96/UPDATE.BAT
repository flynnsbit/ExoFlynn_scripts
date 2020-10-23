@echo off
rem **** This UPDATE.BAT file will copy and install the Football Pro '96
rem **** version 1.01 patch disk to the specified hard drive and game
rem **** directory.  If no parameters are specified, it will first
rem **** check for the patch files already in the current directory.
rem **** If they are not there, it will attempt to install using the
rem **** default drives and directory, i.e., installing from A: to
rem **** C:\SIERRA\FBPRO96.

echo This batch file will update FPS: Football Pro '96 version 1.00 to
echo version 1.01.  The proper syntax for using this installation
echo precedure is:
echo.
echo   UPDATE [source drive] [destination drive] [destination directory]
echo.
echo   Example:  UPDATE A: C: \SIERRA\FBPRO96
echo.
echo Note:  You must specify the drives and directories as 3 seperate
echo parameters with a space between each one
echo.
pause

rem **** check to see if there are no parameters specified
if "%1"=="" goto noparms1
if "%2"=="" goto noparms1
if "%3"=="" goto noparms1

rem **** check the status of the 1st parameter and set F variable
:chkfd
if exist %1\patch.rtp SET F=%1
if exist %1:\patch.rtp SET F=%1:
if exist %F%\patch.rtp goto chkhd
goto needparm

rem **** check the status of the 2nd parameter and set H variable
:chkhd
if exist %2\.. goto needparm
if exist %2\nul SET H=%2
if exist %2:\nul SET H=%2:
if exist %H%nul goto chkdr
goto needparm

rem **** check the status of the 3rd parameter and set D variable
:chkdr
if exist %H%%3shell.exe goto notrail
if exist %H%\%3\shell.exe SET D=\%3
if exist %H%%3\shell.exe SET D=%3
if not exist %H%%D%\shell.exe goto needparm

rem **** copy all files from disk 1 to game directory
%H%
cd %D%
cls
echo Copying patch files . . .
copy %F%\*.*

echo.
echo Applying the patch files
echo. 

rem **** patch version 1.00 to 1.01
:patchit
patch patch.rtp

rem **** Update fbcheck.dat
cls
echo Updating FBCHECK.DAT...
fbcheck -69
del fbcheck.lst
echo.
echo  Finished applying Football Pro '96 version 1.01 patch files.
echo.
echo  Read the readme.101 file for additional information about what
echo  this patch fixes.
echo.
goto end


rem **** If no parameters are specified, first check to see if the
rem **** files are in the game directory.  If they are, go directly to
rem **** patchit section, if not check the default drives and directory
rem **** of A: C: \SIERRA\FBPRO96.  If they aren't there, goto needparm.
:noparms1
if not exist .\patch.exe goto nope
if not exist .\patch.rtp goto nope
if not exist .\shell.exe goto nope
goto patchit

:nope
cls
echo Now checking for existence of patch disk in drive A: and game in
echo C:\SIERRA\FBPRO96.  If there is no disk in drive A:, you will
echo receive an "Abort, Retry, Fail" message on this step.  To clear
echo the message if it appears, either insert a formatted floppy disk
echo in drive A: and press "R" to "Retry" or press "F" to "Fail" the
echo check.
echo.
if not exist a:nul goto needparm
if not exist a:\patch.rtp goto needparm
if not exist c:\sierra\fbpro96\shell.exe goto needparm


echo.
echo Prepared to install the Football Pro '96 version 1.01 patch
echo from floppy disk in drive A: to C:\SIERRA\FBPRO96.
echo.
echo If this is NOT correct, press CTRL+C now to terminate
echo execution of the install batch file, otherwise,
echo.
pause

echo.
echo Now copying patch files to C:\SIERRA\FBPRO96...

rem **** Actual execution of the default copy process
c:
cd \sierra\fbpro96
copy a:\*.*
goto patchit


rem **** Extra prompt for telling user not to put a trailing backslash on dir
:notrail
echo Do not use a trailing backslash on the directory name.
echo.

rem **** Bad or missing parameters procedure
:needparm
cls
echo You did not specify the proper source and destination paths and/or
echo drives.  The proper syntax for the installation is:
echo.
echo        UPDATE A: C: \SIERRA\FBPRO96
echo.
echo Replace the "A:" with the letter of the floppy drive with the patch
echo disk.  Replace the "C:" with the letter of the hard drive where
echo Football is installed.  Replace "\SIERRA\FBPRO96" with the directory
echo where Football Pro '96 is installed.
echo.
echo Note that you may specify the drives with or without the colon (both
echo A and A: are acceptable) and the directory with or without the
echo leading backslash (both \SIERRA\FBPRO96 and SIERRA\FBPRO96 are
echo acceptable).  The directory name cannot have a trailing backslash.
echo.
echo If no parameters are specified, the default drives and directory (as
echo shown in the above example) will be tried before providing this
echo prompt screen.
echo.
echo Please try again.
pause

rem **** Clean everything up by deleting the patch files and
rem **** clearing the variables.
:end
if exist %H%%D%\shell.exe del %H%%D%\patch*.*
SET F=
SET H=
SET D=
