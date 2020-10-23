ECHO OFF
CLS
IF %1 == A GOTO :I
IF %1 == B GOTO :I
IF %1 == C GOTO :I
IF %1 == D GOTO :I
IF %1 == E GOTO :I
IF %1 == F GOTO :I
IF %1 == a GOTO :I
IF %1 == b GOTO :I
IF %1 == c GOTO :I
IF %1 == d GOTO :I
IF %1 == e GOTO :I
IF %1 == f GOTO :I
:E
ECHO Please type "INSTALL *", where *
ECHO stands for the letter (A - F)
ECHO of your hard drive.
GOTO :D
:I
IF EXIST %1:INSTALL.BAT GOTO :E
ECHO "Mickey's Crossword Puzzle Maker"
ECHO is being installed.
COPY MPMBAT.BTT %1:MCPM.BAT
IF EXIST %1:\LEGACY\MPM\MPMCROSS.EXE GOTO :I1
MD %1:\LEGACY
MD %1:\LEGACY\MPM
:I1
COPY *.EXE %1:\LEGACY\MPM
COPY *.MPM %1:\LEGACY\MPM
IF EXIST PC.MPM GOTO :I5
ECHO Please remove the Program Disk
ECHO and insert the Picture Clue Disk
ECHO in the same drive.
:I3
PAUSE
IF EXIST PC.MPM GOTO :I4
ECHO Please insert the Picture Clue Disk.
GOTO :I3
:I4
COPY *.MPM %1:\LEGACY\MPM
:I5
COPY *.PZL %1:\LEGACY\MPM
IF EXIST %1:\LEGACY\MPM\XPUZZLES GOTO :I6
MD %1:\LEGACY\MPM\XPUZZLES
:I6
ECHO Installation is complete.
:D
ECHO ON
%1: