ECHO OFF
SU
IF ERRORLEVEL 67 GOTO C
IF ERRORLEVEL 68 GOTO D
IF ERRORLEVEL 69 GOTO E
IF ERRORLEVEL 70 GOTO F
GOTO END
:C
C:
GOTO TNSFR
:D
D:
GOTO TNSFR
:E
E:
GOTO TNSFR
:F
F:
:TNSFR
CD\
ECHO "TRANSFERRING A: TO 'SIS' SUBDIRECTORY ON HARD DISK ..."
MKDIR SIS
CD\SIS
COPY A:*.*
IF EXIST MUG001.PCC GOTO END
SETUP2
:END
ECHO "TO BEGIN THE INVESTIGATION TYPE 'SIS' THEN PRESS <ENTER>"

ECHO "   --- CAUTION ---  BACKUP YOUR DISKS BEFORE RUNNING SIS"
ECHO "   (YOU NEED TO MAKE COPIES EVERY TIME PRIOR TO STARTING THE
ECHO "     GAME FROM THE BEGINNING !!!!!!!)


