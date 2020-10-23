ECHO OFF
CLS
ECHO ************************************
ECHO **         FORT  APACHE           **
ECHO **ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
ECHO **         INSTALLATION           **
ECHO **      (From 3.5 " Disks)        **
ECHO **ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
ECHO **ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
ECHO **ÿTo install from 5.25 " disksÿÿÿ**
ECHO **ÿÿÿÿÿuse INST360 insteadÿÿÿÿÿÿÿÿ**
ECHO **ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
ECHO **ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
ECHO ** (c) Copyright Impressions 1992 **
ECHO **      All rights reserved       **
ECHO ************************************
ECHO ÿ
IF "%1"=="" GOTO help
  ECHO Installing APACHE onto %1. Please wait...
  MD %1\vga
  COPY vga\*.vga %1\vga /v >NUL
  ECHO EGA\VGA Graphic files copied
  COPY vga_lib.bin %1 /v >NUL
 COPY inst*.bat %1 /V >NUL
 COPY b360.bat %1 /V >NUL
  ECHO Library files copied
 COPY fa???.bin %1 /v >NUL 
  ECHO Language files copied
  MD %1\sound
  COPY sound\ts??.pcs %1\sound /v >NUL
  ECHO Sample files copied
  COPY APACHE.exe %1 /V >NUL
  ECHO APACHE copied
  ECHO ÿ
  ECHO Installation complete.
  GOTO msdos

:help
  ECHO INSTALL drive-letter:[pathname]
  ECHO ÿ
  ECHO Eg 1: To install APACHE on drive C: type:-
  ECHO ÿ
  ECHO ÿ     INSTALL C:
  ECHO ÿ
  ECHO Eg 2: To install APACHE onto C:\GAMES\APACHE:-
  ECHO ÿ
  ECHO ÿ     MD C:\GAMES\APACHE
  ECHO ÿ     INSTALL C:\GAMES\APACHE
  ECHO ÿ

:msdos

