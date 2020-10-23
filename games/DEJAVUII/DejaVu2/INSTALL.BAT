@ECHO OFF
CLS
REM ICOM Simulations Install batch program
IF %1. == . GOTO EXPLAIN
IF %2. == . GOTO EXPLAIN
GOTO DOCOPY
:EXPLAIN
ECHO To install the game on a hard drive insert the game disk into
ECHO drive A or B depending on your computer, then select the drive
ECHO by typing "A:" or "B:" at the prompt and press ENTER. Next 
ECHO determine on what hard drive you want to install the game and
ECHO type in INSTALL (floppy drive letter) (hard drive letter).
ECHO So if you wanted to install the game from drive A to drive C
ECHO type "INSTALL A C" and press ENTER.
GOTO THEEND

:DOCOPY
SET SRCDRIVE=%1
SET DSTDRIVE=%2
CD %DSTDRIVE%:\
MD %DSTDRIVE%:DEJAVUII
CD %DSTDRIVE%:DEJAVUII

ECHO Copying game files.
COPY INSTALL2.BAT %DSTDRIVE%:
%DSTDRIVE%:
INSTALL2.BAT
:THEEND
