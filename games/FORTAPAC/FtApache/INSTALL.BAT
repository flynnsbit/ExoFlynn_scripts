ECHO OFF
CLS
ECHO ************************************
ECHO **         FORT  APACHE           **
ECHO **��������������������������������**
ECHO **         INSTALLATION           **
ECHO **      (From 3.5 " Disks)        **
ECHO **��������������������������������**
ECHO **��������������������������������**
ECHO **�To install from 5.25 " disks���**
ECHO **�����use INST360 instead��������**
ECHO **��������������������������������**
ECHO **��������������������������������**
ECHO ** (c) Copyright Impressions 1992 **
ECHO **      All rights reserved       **
ECHO ************************************
ECHO �
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
  ECHO �
  ECHO Installation complete.
  GOTO msdos

:help
  ECHO INSTALL drive-letter:[pathname]
  ECHO �
  ECHO Eg 1: To install APACHE on drive C: type:-
  ECHO �
  ECHO �     INSTALL C:
  ECHO �
  ECHO Eg 2: To install APACHE onto C:\GAMES\APACHE:-
  ECHO �
  ECHO �     MD C:\GAMES\APACHE
  ECHO �     INSTALL C:\GAMES\APACHE
  ECHO �

:msdos

