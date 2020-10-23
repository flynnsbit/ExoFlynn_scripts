ECHO OFF
CLS
BREAK ON
IF "%1"=="" GOTO HELP
IF "%1"=="C:" GOTO INSTALL
IF "%1"=="c:" GOTO INSTALL
IF "%1"=="D:" GOTO INSTALL
IF "%1"=="d:" GOTO INSTALL
IF "%1"=="e:" GOTO INSTALL
IF "%1"=="E:" GOTO INSTALL
IF "%1"=="f:" GOTO INSTALL
IF "%1"=="F:" GOTO INSTALL
IF "%1"=="g:" GOTO INSTALL
IF "%1"=="G:" GOTO INSTALL
IF "%1"=="h:" GOTO INSTALL
IF "%1"=="H:" GOTO INSTALL
GOTO HELP
:INSTALL
ECHO     ษอออออออออออออออออออออออออออออออออออออออป
ECHO     บ Installation   : U.S.H.F. Version 1.3 บ
ECHO     ศอออออออออออออออออออออออออออออออออออออออผ
ECHO. ÿ
ECHO This game requires 4 Megabyte of disk space.
ECHO ÿ
ECHO You can cancel at anytime by pressing CTRL-C.
ECHO ÿ
PAUSE

:disk1
CLS
IF EXIST USHF.1 GOTO copy1
ECHO ÿ
ECHO Please insert USHF disk 1.
PAUSE
IF EXIST USHF.1 GOTO copy1
GOTO disk1
:copy1
ECHO ÿ
MD %1\USHF
COPY *.* %1\USHF

:disk2
CLS
ECHO ÿ
ECHO Please insert USHF disk 2.
PAUSE
IF EXIST USHF.2 GOTO copy2
GOTO disk2
:copy2
CLS
ECHO ÿ
COPY *.* %1\USHF

:disk3
CLS
ECHO ÿ
ECHO Please insert USHF disk 3.
PAUSE
IF EXIST USHF.3 GOTO copy3
GOTO disk3
:copy3
CLS
ECHO ÿ
COPY *.* %1\USHF

%1
CD \USHF
CLS
ECHO Installation Complete!
ECHO.
ECHO To start the game type: USHF
ECHO. ÿ
GOTO END

:HELP
ECHO To install the game on your hard disk type:
ECHO. ÿ
ECHO INSTALL [drive:]
ECHO. ÿ
ECHO For example, to install the game on the hard disk C, type:
ECHO. ÿ
ECHO INSTALL C:
ECHO. ÿ
GOTO END
:END
