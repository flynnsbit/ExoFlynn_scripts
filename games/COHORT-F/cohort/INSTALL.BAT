ECHO OFF
CLS
ECHO ************************************
ECHO **   COHORT - Fighting for Rome   **
ECHO **˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙**
ECHO ** 	   INSTALLATION˙   ˙˙˙˙˙˙˙**
ECHO **˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙**
ECHO ** (c) Copyright Impressions 1991 **
ECHO **      All rights reserved       **
ECHO ************************************
ECHO ˙
IF "%1"=="" GOTO help
  ECHO Installing COHORT onto %1. Please wait...
  COPY cohort.exe %1 /V >NUL
  COPY *.bin %1 /V >NUL
  COPY *.dat %1 /V >NUL
  COPY *.cga %1 /V >NUL
  COPY *.vga %1 /V >NUL
  COPY *.txt %1 /V >NUL
  COPY *.pcs %1 /V >NUL
  ECHO ˙
  ECHO Installation complete.
  GOTO msdos

:help
  ECHO INSTALL drive-letter:[pathname]
  ECHO ˙
  ECHO Eg 1: To install COHORT on drive C: type:-
  ECHO ˙
  ECHO ˙     INSTALL C:
  ECHO ˙
  ECHO Eg 2: To install COHORT onto C:\GAMES\COHORT:-
  ECHO ˙
  ECHO ˙     MD C:\GAMES\COHORT
  ECHO ˙     INSTALL C:\GAMES\COHORT

:msdos
