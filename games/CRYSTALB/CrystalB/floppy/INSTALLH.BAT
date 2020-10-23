ECHO OFF
cls
REM This is an installation batch file for CRYSTAL BALL
IF .%2==. goto explain
IF .%1==. goto explain
%1ARCE %1CRYSTAL *.* %2 -r
ECHO That's all for now...
GOTO END
:explain
ECHO To install this software on a hard disk or high capacity floppy:
ECHO First make sure you have created the subdirectory where the
ECHO program should be. For example, to create a subdirectory
ECHO called CRYSTAL, start in the root directory and enter this
ECHO command:
ECHO       MD CRYSTAL
ECHO Now, if your new program disk is in drive A, and your hard
ECHO disk is drive C, enter this command:
ECHO       A:INSTALLH A: C:\CRYSTAL
ECHO If your new program disk is in drive B, and your hard disk is
ECHO drive C, enter this command:
ECHO       B:INSTALLH B: C:\CRYSTAL
ECHO If your drives have different letters than these, just insert
ECHO the correct letters into the command. Make sure you type
ECHO the command with the spacing and punctuation exactly as
ECHO shown in this example, and use the actual name of your
ECHO subdirectory.
ECHO To install the software on 360K floppy disks, use the command:
ECHO INSTALL
GOTO END
:END
