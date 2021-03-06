ECHO OFF
CLS
ECHO ************************************
ECHO **   Charge of the Light Brigade  **
ECHO **��������������������������������**
ECHO **         INSTALLATION           **
ECHO **��������������������������������**
ECHO ** (c) Copyright Impressions 1991 **
ECHO **      All rights reserved       **
ECHO ************************************
ECHO �
IF "%1"=="" GOTO help
  ECHO Installing CLB onto %1. Please wait...
  MD %1\clbdata
  MD %1\clbdata\cga
  MD %1\clbdata\vga
  COPY clbdata\cga\*.cga %1\clbdata\cga /v >NUL
  ECHO CGA Graphic files copied
  COPY clbdata\vga\*.vga %1\clbdata\vga /v >NUL
  ECHO EGA\VGA Graphic files copied
  COPY cga_lib.bin %1 /v >NUL
  COPY vga_lib.bin %1 /v >NUL
  COPY install.bat %1 /V >NUL
  ECHO Library files copied
  COPY clbdata\*.pcs %1\clbdata /v >NUL
  ECHO Sample files copied
  COPY install.bat %1 /V >NUL
  COPY clb.exe %1 /V >NUL
  ECHO CLB copied
  ECHO �
  ECHO Installation complete.
  GOTO msdos

:help
  ECHO INSTALL drive-letter:[pathname]
  ECHO �
  ECHO Eg 1: To install CLB on drive C: type:-
  ECHO �
  ECHO �     INSTALL C:
  ECHO �
  ECHO Eg 2: To install CLB onto C:\GAMES\CLB:-
  ECHO �
  ECHO �     MD C:\GAMES\CLB
  ECHO �     INSTALL C:\GAMES\CLB

:msdos
