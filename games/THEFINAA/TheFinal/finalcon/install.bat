@ECHO OFF
CLS
ECHO ************************************
ECHO **       The Final Conflict       **
ECHO **��������������������������������**
ECHO **         INSTALLATION           **
ECHO **��������������������������������**
ECHO ** (c) Copyright Impressions 1991 **
ECHO **      All rights reserved       **
ECHO ************************************
ECHO �
IF "%1"=="" GOTO help
IF "%2"=="" GOTO help
  
  ECHO Installing %1GA files onto %2\CONFLICT. Please wait...
  MD %2\CONFLICT >NUL
  COPY inst*.bat %2\CONFLICT /v >NUL
  COPY %1.exe %2\CONFLICT /v >NUL
  COPY *.PAK %2\CONFLICT /v >NUL
  COPY *.DAT %2\CONFLICT /v >NUL
  COPY *.%1GA %2\CONFLICT /v >NUL
  ECHO �
  ECHO Installation complete.
  GOTO msdos

:help
  ECHO INSTALL G [drive-letter]:
  ECHO �
  ECHO Where G is one of the following 2 letters:
  ECHO �
  ECHO V (VGA Version) or E (EGA Version)
  ECHO �
  ECHO Eg: To install The Final Conflict VGA Version on drive C: type:
  ECHO INSTALL V C:
  ECHO �

:msdos
%2
cd %2\conflict
