ECHO OFF
CLS
ECHO ************************************
ECHO **    GREAT NAPOLEONIC BATTLES    **
ECHO **ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
ECHO **         INSTALLATION           **
ECHO **      (From 3.5 " Disks)        **
ECHO **ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
ECHO **ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
ECHO **ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
ECHO **ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
ECHO ** (c) Copyright Impressions 1992 **
ECHO **      All rights reserved       **
ECHO ************************************
ECHO ÿ
IF "%1"=="" GOTO help
  ECHO Installing GNB onto %1. Please wait...
IF "%1"=="a:" GOTO :fs1
IF "%1"=="b:" GOTO :fs1
IF "%1"=="c:" GOTO :fs1
IF "%1"=="d:" GOTO :fs1
  MD %1
:fs1
  MD %1\vga
  COPY vga\*.vga %1\vga /v >NUL
  ECHO EGA\VGA Graphic files copied
  COPY vga_lib.bin %1 /v >NUL
  COPY inst*.bat %1 /v >NUL
  ECHO Library files copied
  COPY map???.bin %1 /v >NUL 
  COPY men???.bin %1 /v >NUL 
  COPY war???.bin %1 /v >NUL 
  COPY bat???.bin %1 /v >NUL 
  ECHO Language files copied
  COPY *.pcs %1 /v >NUL 
  ECHO Sample files copied
  COPY marengo.map %1 /v >NUL 
  COPY marengo.men %1 /v >NUL 
  COPY quatre.map %1 /v >NUL 
  COPY quatre.men %1 /v >NUL 
  COPY waterloo.map %1 /v >NUL 
  COPY waterloo.men %1 /v >NUL 
  COPY gnbrules.war %1 /v >NUL 
  ECHO Scenarios copied
  COPY map.exe %1 /V >NUL
  ECHO MAP copied
  COPY men.exe %1 /V >NUL
  ECHO MEN copied
  COPY war.exe %1 /V >NUL
  ECHO WAR copied
  COPY GNB.exe %1 /V >NUL
  ECHO GNB copied
  ECHO ÿ
  ECHO Installation complete.
  GOTO msdos

:help
  ECHO INSTALL drive-letter:[pathname]
  ECHO ÿ
  ECHO Eg 1: To install GNB on drive C: type:-
  ECHO ÿ
  ECHO ÿ     INSTALL C:
  ECHO ÿ
  ECHO Eg 2: To install GNB onto C:\GAMES\GNB:-
  ECHO ÿ
  ECHO ÿ     INSTALL C:\GAMES\GNB
  ECHO ÿ

:msdos

