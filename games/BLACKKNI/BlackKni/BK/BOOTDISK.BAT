@ECHO off
IF "%1" == "a:" GOTO BTCONTINUE
IF "%1" == "b:" GOTO BTCONTINUE
GOTO BTERROR
:BTCONTINUE
IF "%1" == "a:" ECHO Please insert a blank bootable disk into Drive A:
IF "%1" == "b:" ECHO Please insert a blank bootable disk into Drive B:
PAUSE
REM copy autoexec.bt %1\autoexec.bat
copy config.bt %1\config.sys
REM ECHO From now on you can start Black Knight by inserting the boot disk into the
REM ECHO drive prior to turning on your computer.
ECHO
GOTO BTFINI
:BTERROR
ECHO Type BOOTDISK A: or BOOTDISK B:
ECHO Please make sure you insert a blank bootable disk into the appropriate disk
ECHO drive.
:BTFINI


