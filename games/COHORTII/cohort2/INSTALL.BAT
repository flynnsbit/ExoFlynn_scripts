ECHO OFF
CLS
ECHO ***************************************
ECHO **   COHORT II - Fighting for Rome   **
ECHO **�����������������������������������**
ECHO **           INSTALLATION            **
ECHO **�����������������������������������**
ECHO **  (c) Copyright Impressions 1992   **
ECHO **        All rights reserved        **
ECHO ***************************************
ECHO �
IF "%1"=="" GOTO help
  ECHO Installing COHORT II onto %1. Please wait...
  MD %1 >NUL
  COPY *.* %1 /V >NUL
  ECHO Insert Disk 2
  pause
  COPY *.* %1 /V >NUL
  ECHO �
  ECHO Installation complete.
  SD %1
  SETUP
  GOTO msdos

:help
  ECHO INSTALL drive-letter:[pathname]
  ECHO �
  ECHO Eg 1: To install COHORT II on drive C: type:-
  ECHO �
  ECHO �     INSTALL C:\COHORT2
  ECHO �
  ECHO Eg 2: To install COHORT II to work with CAESAR type:-
  ECHO �
  ECHO �     INSTALL C:\CAESAR

:msdos

