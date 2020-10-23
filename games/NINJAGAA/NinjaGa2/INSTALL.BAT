echo off
rem NINJA install (256 color, 2 disks)
if "%1" == "" goto nodrive
echo *ÿ
echo * NINJA install for VGA or MCGA.
echo *
echo * This batch file will install the VGA/MCGA version
echo * of NINJA to a hard disk.
echo *
echo * Press CTRL-C to cancel install, or
pause
echo Making subdirectory %1\NINJA
md %1\NINJA
if errorlevel 1 goto cantcreate
echo Copying files...
copy *.* %1\NINJA > nul
echo * ÿ
echo * Please insert NINJA DISK 2
echo *
pause
echo Copying files...
copy *.* %1\NINJA > nul
echo *
echo * Installation complete.  To play NINJA, change the default drive
echo * and path to the drive and directory containing NINJA.  For example:
echo *
echo *    C: [enter]
echo *    CD \NINJA [enter]
echo *    NINJA [enter]
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
echo * To install NINJA, the current drive must be the drive containing
echo * the NINJA master disk.  You must specify the drive on which to
echo * install the game.  The drive must end with a ":".  For example, to
echo * install NINJA on drive C: from a floppy in drive A:, type:
echo *
echo *    A: [enter]
echo *    INSTALL C: [enter]
echo *
echo * You may also specify a directory path.  This directory must
echo * already exist.  For example:
echo *
echo *    A: [enter]
echo *    INSTALL C:GAMES [enter]
echo *
:exit
