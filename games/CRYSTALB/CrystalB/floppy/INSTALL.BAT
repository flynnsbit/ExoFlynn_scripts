ECHO OFF
cls
REM This is an installation batch file for CRYSTAL BALL
IF .%2==. goto explain
IF .%1==. goto explain
%1:ARCE %1:CRYSTAL CRYSTAL.EXE *.DBF *.REG %2: -r
ECHO Now reemove the first disk from the %2 drive
ECHO and put a new disk in the %2 drive
PAUSE
%1:ARCE %1:CRYSTAL CRYSDOC.EXE *.doc *.lst %2: -r
ECHO That's all for now...
GOTO END
:explain
ECHO To install this software on 360K floppy disks:
ECHO First make sure you have formatted at least two new disks.
ECHO Put the new program disk in drive A, and one of the new
ECHO formatted disks in drive B. Then enter this command:
ECHO       A:INSTALL A B
ECHO If your drives have different letters than these, just insert
ECHO the correct letters into the command.
ECHO When the installation is complete, the program will be
ECHO on the disk in the B drive. Put the installation disk away
ECHO in a safe place. The disk in the B drive is now your program
ECHO disk. The other formatted disk will be your data disk. You
ECHO can put the program disk in the A drive and run the program
ECHO by entering the command: CRYSTAL
ECHO If you already have a data disk, you can use it in the B drive
ECHO now.
ECHO If you want to install the software on a hard disk or high
ECHO capacity floppy, use this command: INSTALLH
GOTO END
:END
