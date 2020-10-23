echo off
:NewDir
REM this installs new Footy subdirectory; errorlevel 0 means success
MD C:\FOOTY
MD C:\FOOTY\SPL
MD C:\FOOTY\Data
if errorlevel 0 goto CopyFiles
cls
echo Error creating C:\Footy subdirectory, do not use install program
echo You must install Football manually. Sorry.
goto End
:CopyFiles
REM this copies files from floppies in to C:\Footy
cls
echo Insert disk labelled "A" into your A: disk drive, then...
PAUSE
copy A:*.* C:\FOOTY
copy A:\SPL\*.* C:\FOOTY\SPL\*.*
copy A:\Data\*.* C:\FOOTY\Data\*.*
cls
echo Insert disk labelled "B" into your A: disk drive, then...
PAUSE
copy A:\Data\*.* C:\FOOTY\Data\*.*
cls
goto End
:End
echo INSTALL FINISHED
echo Please ignore any "Batch file missing" message
