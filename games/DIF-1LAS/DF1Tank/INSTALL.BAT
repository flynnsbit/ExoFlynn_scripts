@ECHO OFF
IF "%1"=="" GOTO ERR0
IF "%1"=="C:" GOTO NOERR
IF "%1"=="c:" GOTO NOERR
IF "%1"=="D:" GOTO NOERR
IF "%1"=="d:" GOTO NOERR
IF "%1"=="E:" GOTO NOERR
IF "%1"=="e:" GOTO NOERR
GOTO ERR0
:NOERR
CD %1\
MD %1\TANK
CD %1\TANK
MD %1DL
CD \
:INS_0
IF EXIST TANK1.EXE GOTO INS_1
ECHO Please insert the "DISK 1" into the disk driver.
PAUSE
GOTO INS_0
:INS_1
COPY . %1
CD DL
CD %1DL
COPY . %1
:INS_2
IF EXIST DEMP0001.DOR GOTO INS_3
ECHO Please insert the "DISK 2" into the disk driver.
PAUSE
GOTO INS_2
:INS_3
COPY . %1
%1
CD..
REN TANK.BAT TANKJOY.BAT
CD \
ECHO CD\TANK > TANK.BAT
ECHO TANKJOY >> TANK.BAT
ECHO CD\ >> TANK.BAT
ECHO		       Installation has already finished.
ECHO	     Next time you can type "TANK" in the driver %1\ to play
ECHO			       Laser Tank DIF_1
GOTO EXIT
:ERR0
ECHO		Please type "INSTALL" with a disk driver's name.
ECHO		       EXAMPLE:
ECHO				    INSTALL C:
:EXIT
ECHO ON
