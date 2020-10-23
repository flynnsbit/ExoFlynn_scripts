@ECHO OFF
CLS
ECHO                         ษอออออออออออออออออออออออออป
ECHO                         บ        LIVERPOOL        บ
ECHO                         บ    The Computer Game    บ
ECHO                         วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
ECHO                         บ      Installation       บ
ECHO                         ศอออออออออออออออออออออออออผ
ECHO:
IF '%1' == '/?' GOTO Help
IF '%1' == '/H' GOTO Help
IF '%1' == '/h' GOTO Help
IF '%1' == '' GOTO Error
IF EXIST LIVTST00.$$$ GOTO A
ECHO You Must Install from the original disk and enter the correct drive
ECHO e.g.
ECHO      A:
ECHO      INSTALL C:
GOTO End
:A

IF EXIST %1\FOOTBALL\NUL GOTO ClearDir
GOTO NewDir

:ClearDir
IF EXIST %1\FOOTBALL\FOOT.OVL GOTO :Ok2
:Already
CLS
ECHO The subdirectory %1\FOOTBALL already exists!
GOTO End
:Ok2
IF NOT EXITS %1\FOOTBALL\FRONTEND.OVL GOTO Already
GOTO CopyFiles

:NewDir
MD %1\FOOTBALL
IF errorlevel=0 GOTO CopyFiles
ECHO Error Creating %1\FOOTBALL, do no use INSTALL program.
ECHO You must install Liverpool manually. Sorry.
GOTO End

:CopyFiles
ECHO Copying files to %1\FOOTBALL
COPY *.* %1\FOOTBALL
IF EXIST %1\FOOTBALL\INSTALL.BAT GOTO Ok3
GOTO ErrorI

:Ok3

ECHO INSTALL FINISHED
PAUSE
CLS
ERASE %1\FOOTBALL\INSTALL.BAT
ERASE %1\FOOTBALL\LIVTST00.$$$
%1
CD\FOOTBALL
Liver
GOTO End

:ErrorI
CLS
ECHO Error installing Liverpool The Computer Game
GOTO End

:Help
ECHO To Install Liverpool The Computer Game you must change to floppy drive
ECHO and type INSTALL followed by the drive to install it to.
ECHO e.g.      A:
ECHO           INSTALL C:
ECHO:
ECHO This will create a subdirectory call FOOTBALL will all the files in it.
ECHO:
GOTO End

:Error
ECHO You need to specify a drive letter (E.G. INSTALL C: )
:End

