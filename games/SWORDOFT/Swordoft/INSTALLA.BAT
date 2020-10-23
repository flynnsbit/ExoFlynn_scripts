@echo off
cls
REM this program installs for 3.5" disks only
REM test for existing SAMURAI subdirectory
if EXIST c:\SAMURAI\rp.exe goto ClearDir
if EXIST c:\SAMURAI\rp.cat goto ClearDir
if EXIST c:\SAMURAI\melee.exe goto ClearDir
goto NewDir

:ClearDir
REM  this will clear the subdirectory C:\SAMURAI
cls
REM echo Please answer "Y" to following question, it clears out old SAMURAI files
erase c:\SAMURAI\*.*<Y
goto CopyFiles

:NewDir
REM  this installs new SAMURAI subdirectory; errorlevel 0 means success
MD C:\SAMURAI
if errorlevel 0 goto CopyFiles
cls
echo Error creating C:\SAMURAI subdirectory, do not use INSTALL program.
echo You must install SWORD OF THE SAMURAI manually. Sorry. 
goto End

:CopyFiles
REM  this copies files from the floppy into C:\SAMURAI

cls
echo Insert disk into your A: disk drive, then...
PAUSE
copy A:*.* C:\SAMURAI

copy A:SAMLOADR C:\SAMURAI.BAT

cls
goto End

:End
echo INSTALL FINISHED
echo Please ignore any "Batch file missing" message
erase c:\samurai\install.bat
