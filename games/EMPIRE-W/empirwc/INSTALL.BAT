echo off
cls
echo *  This batch file installs EMPIRE from your master disk to a working
echo *  disk or hard drive.
echo *
echo *  EMPIRE requires about 320K of space.  A directory named 'EMPIRE\'
echo *  a data directory 'EMPIRE\EMPDAT\', and a data directory
echo *  'EMPIRE\EMPDAT\XTRAMAPS' will be created on the designated
echo *  target drive and optional directory.
echo *
if %1. == . goto noparms
echo *  Press the CONTROL and C keys simultaneously to cancel the disk
echo *  installation and return to DOS.
echo *
echo *  Strike any key to begin installing EMPIRE on your selected drive.
echo *
pause
cls
echo *  Starting installation.
echo *
ECHO *   Starting installation,  please wait . . .
ECHO *  
md %1EMPIRE
md %1EMPIRE\EMPDAT
md %1EMPIRE\EMPDAT\XTRAMAPS
copy *.* %1EMPIRE > nul
copy EMPDAT\*.* %1EMPIRE\EMPDAT > nul
copy EMPDAT\XTRAMAPS\*.* %1EMPIRE\EMPDAT\XTRAMAPS > nul
echo *  Installation is complete.  To start EMPIRE, change the default drive
echo *  and path to the drive and directory containing the installed EMPIRE
echo *  files.
echo *
echo *  For example:
echo *
echo *  C:[enter]                ; change to installed drive
echo *  CD \EMPIRE[enter]        ; change to empire directory
echo *  EMPIRE                   ; execute empire
echo *
echo *  I hope you have fun with EMPIRE.  Enjoy.
echo *
goto done
:noparms
echo *  To install EMPIRE, you need to include the drive (and optional
echo *  directory path) in which to install your EMPIRE files.  Make sure you
echo *  end the path/drive either with a ':' or a '\'.
echo *
echo *  Important, INSTALL must be executed with current drive being the
echo *  drive that has the EMPIRE files!
echo *
echo *  For example, if you wish to install EMPIRE on drive C: with the original
echo *  EMPIRE disk in drive A:, you would type:
echo *
echo *  A:[enter]
echo *  INSTALL C:[enter]
echo *
echo *     or if you wished to copy it from drive B: to your GAMES directory in
echo *  drive D:
echo *
echo *  B:[enter]
echo *  INSTALL D:GAMES\[enter]
echo *
echo *   Go ahead and try again.
:done
