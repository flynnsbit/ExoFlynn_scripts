@echo off
IF %1A==A GOTO Error1
MD %1\BW
CD %1\BW
COPY INSTALL.BAT %1 > NUL
ECHO"                        Please wait for a moment...
:Again1
if not exist DISK.001 goto ReplaceD1
COPY *.* %1 > NUL
:Again2
ECHO"
ECHO"                   浜様様様様様様様様様様様様様様様様様様融
ECHO"                   �        Please insert  DISK #2        �
ECHO"                   藩様様様様様様様様様様様様様様様様様様夕
ECHO"
PAUSE
if not exist DISK.002 goto Again2
COPY *.* %1 > NUL
%1
TSFX > NUL
PICTURES > NUL
DEL TSFX.EXE
DEL PICTURES.EXE
DEL DISK.001
DEL DISK.002
ReadMe
SETUP
ECHO"
ECHO"
ECHO"
ECHO"                   浜様様様様様様様様様様様様様様様様様様融
ECHO"                   �        Installation completed!       �
ECHO"                   �        Type BW to play.              �
ECHO"                   藩様様様様様様様様様様様様様様様様様様夕
ECHO"
ECHO"
ECHO"
GOTO End
:ReplaceD1
ECHO"
ECHO"                   浜様様様様様様様様様様様様様様様様様様融
ECHO"                   �        Please insert  DISK #1        �
ECHO"                   藩様様様様様様様様様様様様様様様様様様夕
ECHO"
PAUSE
GOTO Again1
:Error1
CLS
ECHO"
ECHO"
ECHO"                   浜様様様様様様様様様様様様様様様様様様融
ECHO"                   �    GameOne Systems Limited Present   �
ECHO"                   � Bumping Warrior Installation Program �
ECHO"                   藩様様様様様様様様様様様様様様様様様様夕
ECHO"�
ECHO"                   浜様様様様様様様様様様様様様様様様様様融
ECHO"                   �    Horng Shen Information Co.,Ltd.   �
ECHO"                   藩様様様様様様様様様様様様様様様様様様夕
ECHO"�
ECHO"                            Please C - INSTALL TO C:
ECHO"                            Please D - INSTALL TO D:
ECHO"                            Please E - INSTALL TO E:
ECHO"�
ECHO"                        Please ENTER destination drive:
ECHO"
GETKEY
IF ERRORLEVEL 0 GOTO T1
IF ERRORLEVEL 1 GOTO T2
IF ERRORLEVEL 2 GOTO T3
:T1
INSTALL C:
:T2
INSTALL D:
:T3
INSTALL E:
:End
