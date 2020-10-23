echo off
rem XENOCIDE install (16 color, 1 disk)
if "%1" == "" goto nodrive
echo *ÿ 
echo * XENOCIDE install for EGA, CGA, and TANDY 1000
echo *   
echo * This batch file will install the EGA, CGA, and 
echo * TANDY 1000 version of XENOCIDE to a hard disk.
echo *    
echo * Press CTRL-C to cancel install, or
pause
echo Making subdirectory %1\XENOCIDE
md %1\XENOCIDE
if errorlevel 1 goto cantcreate
echo Copying files...
copy *.* %1\XENOCIDE > nul
echo *   
echo * Installation complete.  To play XENOCIDE, change the default drive
echo * and path to the drive and directory containing XENOCIDE.  For example:
echo *   
echo *    C: [enter]
echo *    CD \XENOCIDE [enter]
echo *    XENO [enter]
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
echo * To install XENOCIDE, the current drive must be the drive containing 
echo * the XENOCIDE master disk.  You must specify the drive on which to 
echo * install the game.  The drive must end with a ":".  For example, to 
echo * install XENOCIDE on drive C: from a floppy in drive A:, type:
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
