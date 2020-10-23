echo off
rem "Are We There Yet?" install (2 disks)
if "%1" == "" goto nodrive
echo *ÿ 
echo *   
echo * This batch file will install
echo * "Are We There Yet?" to a hard disk.
echo *    
echo * Press CTRL-C to cancel install, or
pause
echo Making subdirectory %1VACATION
md %1VACATION
if errorlevel 1 goto cantcreate
echo Copying files...
copy *.* %1VACATION > nul
echo * ÿ   
echo * Please insert the other "Are We There Yet?" disk
echo * 
pause
echo Copying files...
copy *.* %1VACATION > nul
echo *   
echo * Installation complete.  To play, change the default drive
echo * and path to the drive and directory containing "Are We 
echo * There Yet?"
echo * For example:
echo *   
echo *    C: [enter]
echo *    CD \VACATION [enter]
echo *    AWTY [enter]
echo *
goto exit
:cantcreate
echo *
echo * Unable to create the directory
echo * Installation not done.
echo *
goto exit
:nodrive
echo *
echo * To install "Are We There Yet?", the current drive must be the drive
echo * containing the "Are We There Yet?" master disk.  You must specify the
echo * drive on which to install the game.  The drive must end with a ":".
echo * For example, to install "Are We There Yet?" on drive C: from a floppy in
echo * drive A:, type:
echo *    
echo *    A: [enter]
echo *    INSTALL C: [enter]
echo *     
:exit
