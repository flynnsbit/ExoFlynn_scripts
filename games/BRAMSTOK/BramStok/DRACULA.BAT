@ECHO OFF
IF EXIST M00.PAC GOTO INSTALL
GOTO RUNNIT
:INSTALL
MD PACS
MD DATA
XCOPY *.PAC PACS\ /V
XCOPY *.BIN DATA\ /V
XCOPY *.PCM DATA\ /V
XCOPY DUMSCR.LBM DATA\ /V
DEL DUMSCR.LBM
DEL *.BIN
DEL *.PAC
DEL *.PCM
:RUNNIT
EMSTEST
IF ERRORLEVEL 1 GOTO EXIT
INTRO
ANIMPLAY
DRAC
:EXIT
@ECHO ON