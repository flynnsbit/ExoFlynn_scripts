@echo off >nul
echo off >nul
cls >nul
if !%1! == !! goto usage
set AbyssSource=b
if not !%2!  == !! set AbyssSource=%2
if not !%3!  == !! set AbyssDir=%3
if !%3!  == !! set AbyssDir=root directory
echo Installing Rooms of the Abyss on drive %1:. >con
echo Source drive is %AbyssSource%:. >con
echo Destination directory is %AbyssDir%. >con
echo Press any key to continue, or CTRL-BREAK to abort. >con
pause <con >nul
%1:
cd\
md %3 >nul
cd %3 >nul
copy %AbyssSource%:*.* >nul
goto finished

:Finished
echo Rooms of the Abyss has been installed.>con
echo To play, type in ROOMS [ENTER].
goto end

:usage
echo To install Rooms of the Abyss on your hard disk, type >con
echo INSTALL drive1 drive2 [DIRECTORY] 
echo where drive1 is the hard disk letter on which you want to >con
echo install, drive2 is the source (floppy) drive, and DIRECTORY >con
echo is the name of the directory you wish to install into.
echo DIRECTORY is optional and will default to the root directory.
echo Do not put a colon after the drive letters. >con
echo ÿ>con
echo Rooms of the Abyss requires 313,924 bytes of hard disk space.

:end