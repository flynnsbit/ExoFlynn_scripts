ECHO OFF
IF %1S == S GOTO NOGOOD
IF %2S == S GOTO NOGOOD
CLS
ECHO ***************************************************
ECHO *                                                 *
ECHO * The installation process will install X_MEN II  *
ECHO * onto your %2: drive under a subdirectory called  *
ECHO * XMEN2.  If you do not wish to install X-MEN II  *
ECHO * at this time, press the CTRL-C key combination  *
ECHO * now and then type Y.                            *
ECHO *                                                 *
ECHO ***************************************************
PAUSE>NUL
MD %2:\XMEN2>NUL
%2:
CD \XMEN2
MD %2:\XMEN2\FRAMES>NUL
MD %2:\XMEN2\LEVEL>NUL
MD %2:\XMEN2\MUSIC>NUL
ECHO ÿ
ECHO INSTALLING DISK 1 OF X-MEN II FROM %1: TO %2:
COPY %1:\*.* %2:\XMEN2>NUL
COPY %1:\MUSIC %2:\XMEN2\MUSIC>NUL
:REDO
IF EXIST %1:\FRAMES\FR1.FRM GOTO CONT
ECHO ÿ
ECHO INSERT DISK 2 OF X-MEN II INTO DRIVE %1:
ECHO AND PRESS ANY KEY TO CONTINUE
PAUSE>NUL
GOTO REDO
ECHO ÿ
ECHO INSTALLING DISK 2 OF X-MEN II FROM %1: TO %2:
:CONT
COPY %1:\*.* %2:\XMEN2>NUL
COPY %1:\FRAMES %2:\XMEN2\FRAMES>NUL
COPY %1:\LEVEL %2:\XMEN2\LEVEL>NUL
CLS
ECHO **************************************************
ECHO *                                                *
ECHO * X-MEN II has been successfully installed onto  *
ECHO * your %2: drive.  Type XMEN to play the game.    *
ECHO *                                                *
ECHO **************************************************
GOTO DONE

:NOGOOD
CLS
ECHO TYPE:     INSTALL [SOURCE DRIVE] [DESTINATION DRIVE]
ECHO EXAMPLE:  INSTALL A C  will install X-MEN II from A: to C:

:DONE

