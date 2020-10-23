@ECHO OFF

REM ** AUTO.BAT - Turn AUTOEXEC.BAT and CONFIG.SYS on and off.  This version
REM ** is for the Simpsons game.  It lets the player turn off the two biggest
REM ** memory eaters on his/her system just by typing AUTO OFF.  In order for
REM ** the player to return the computer to normal s/he must type AUTO ON.

IF "%1" == "on" GOTO On
IF "%1" == "oN" GOTO On
IF "%1" == "On" GOTO On
IF "%1" == "ON" GOTO On

IF "%1" == "off" GOTO Off
IF "%1" == "ofF" GOTO Off
IF "%1" == "oFf" GOTO Off
IF "%1" == "oFF" GOTO Off
IF "%1" == "Off" GOTO Off
IF "%1" == "OfF" GOTO Off
IF "%1" == "OFf" GOTO Off
IF "%1" == "OFF" GOTO Off

ECHO:
ECHO AUTO on/off - Turn AUTOEXEC.BAT and CONFIG.SYS on and off for running
ECHO               "Bart Simpson's House of Weirdness" with maximum memory.
GOTO End

:On

REM ** Turn AUTOEXEC.BAT and CONFIG.SYS on.

IF EXIST C:\AUTOEXEC.BAT GOTO Bad
IF EXIST C:\CONFIG.SYS   GOTO Bad

RENAME C:\A.BAT AUTOEXEC.BAT
RENAME C:\C.SYS CONFIG.SYS
GOTO Reminder

:Off

REM ** Turn AUTOEXEC.BAT and CONFIG.SYS off.

IF EXIST C:\A.BAT GOTO Bad
IF EXIST C:\C.SYS GOTO Bad

RENAME C:\AUTOEXEC.BAT A.BAT
RENAME C:\CONFIG.SYS   C.SYS

:Reminder

IF "%2" == "now" WARMBOOT
IF "%2" == "noW" WARMBOOT
IF "%2" == "nOw" WARMBOOT
IF "%2" == "nOW" WARMBOOT
IF "%2" == "Now" WARMBOOT
IF "%2" == "NoW" WARMBOOT
IF "%2" == "NOw" WARMBOOT
IF "%2" == "NOW" WARMBOOT

ECHO:
ECHO Now hit Ctrl-Alt-Delete to reboot the computer.
GOTO End

REM ** File error.

:Bad

ECHO:
ECHO AUTO.BAT already %1 !!!
GOTO End

:End

ECHO 

