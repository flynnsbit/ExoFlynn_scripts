ECHO OFF
CLS
ECHO ************************************
ECHO **         FORT  APACHE           **
ECHO **ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
ECHO **         INSTALLATION           **
ECHO **      (From 5.25 " Disks)       **
ECHO **ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
ECHO ** (c) Copyright Impressions 1992 **
ECHO **      All rights reserved       **
ECHO ************************************
ECHO ÿ
IF "%1"=="" GOTO help
  ECHO Installing APACHE onto %1. Please wait...
  MD %1\vga
  COPY vga\fatitle.vga %1\vga /v >NUL
  COPY vga\FontDesk.vga %1\vga /v >NUL
  COPY vga\FontScot.vga %1\vga /v >NUL
  COPY vga\FABITS.vga %1\vga /v >NUL
  COPY vga\Font5x5.vga %1\vga /v >NUL
  COPY vga\FADesk.vga %1\vga /v >NUL
  COPY vga_lib.bin %1 /v >NUL
 COPY inst*.bat %1 /V >NUL
 COPY b360.bat %1 /V >NUL
  ECHO Library files copied
  MD %1\sound
  COPY sound\ts??.pcs %1\sound /v >NUL
  ECHO Sample files copied
  COPY APACHE.exe %1 /V >NUL
  ECHO APACHE copied
  ECHO ÿ
  ECHO ***************  Disk 2 *****************
  ECHO ÿ
  ECHO ÿ
  PAUSE
  b360 %1
:help
  ECHO INST360 drive-letter:[pathname]
  ECHO ÿ
  ECHO Eg 1: To INST360 APACHE on drive C: type:-
  ECHO ÿ
  ECHO ÿ     INST360 C:
  ECHO ÿ
  ECHO Eg 2: To install APACHE onto C:\GAMES\APACHE:-
  ECHO ÿ
  ECHO ÿ     MD C:\GAMES\APACHE
  ECHO ÿ     INST360 C:\GAMES\APACHE
  ECHO ÿ

:msdos
rem 	TWO DISK GAME
rem	Disk 1 must have
rem	Apache.exe
rem	vga_lib.bin
rem	sound directory (with samples)
rem	all language (.bin) files
rem	vga directory with fatitle,fontdesk,font5x5,fontscot and fabits
rem	install,inst360,inst360b install files
rem
rem	Disk 2 must have
rem	vga directory with all vga files
rem	install,inst360,inst360b install files



