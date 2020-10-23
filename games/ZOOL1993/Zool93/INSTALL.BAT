@ECHO OFF
IF NOT EXIST zool.exe GOTO logon
IF "%1"=="" GOTO nodrive
IF NOT EXIST %1\*.* GOTO nodrive
GOTO driveok
:logon
ECHO You must log onto the disk first e.g. A:
GOTO finish
:nodrive
ECHO You must specify a valid hard disk to install onto e.g. INSTALL C:
GOTO finish
:driveok
@ECHO ON
MD %1\zool
COPY zool.exe %1\zool
COPY zool.dat %1\zool
COPY START.exe %1\zool
COPY FADER.EXE %1\zool

@%1
@CD \ZOOL
:finish