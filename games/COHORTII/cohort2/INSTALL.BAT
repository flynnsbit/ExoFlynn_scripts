ECHO OFF
CLS
ECHO ***************************************
ECHO **   COHORT II - Fighting for Rome   **
ECHO **ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
ECHO **           INSTALLATION            **
ECHO **ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
ECHO **  (c) Copyright Impressions 1992   **
ECHO **        All rights reserved        **
ECHO ***************************************
ECHO ÿ
IF "%1"=="" GOTO help
  ECHO Installing COHORT II onto %1. Please wait...
  MD %1 >NUL
  COPY *.* %1 /V >NUL
  ECHO Insert Disk 2
  pause
  COPY *.* %1 /V >NUL
  ECHO ÿ
  ECHO Installation complete.
  SD %1
  SETUP
  GOTO msdos

:help
  ECHO INSTALL drive-letter:[pathname]
  ECHO ÿ
  ECHO Eg 1: To install COHORT II on drive C: type:-
  ECHO ÿ
  ECHO ÿ     INSTALL C:\COHORT2
  ECHO ÿ
  ECHO Eg 2: To install COHORT II to work with CAESAR type:-
  ECHO ÿ
  ECHO ÿ     INSTALL C:\CAESAR

:msdos

