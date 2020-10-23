@echo off
if "%3" == "EOA" goto :step2
echo This installation program copies The Immortal files to a subdirectory
echo named IMMORTAL on your hard disk. Press Ctrl-C at any time to abort.
if "%1" == "" goto :invcmd
if "%2" == "" goto :invcmd
pause
echo Creating subdirectory %2\immortal
md %2\immortal
:disk1
echo Insert Immortal Disk #1 in drive %1 and
pause
if not exist %1\imm1.lib goto :disk1
echo Copying Disk #1
copy %1*.* %2\immortal
%2\immortal\install.bat %1 %2 EOA
:step2
echo Installation complete.  Move to the IMMORTAL subdirectory and
echo type IMMORTAL to play the game.
pause
goto :exit
:invcmd
echo ÿ
echo To install type "Install A: C:" where A: is the floppy drive you want to
echo install from and C: is the hard disk you want to install to.
:exit




