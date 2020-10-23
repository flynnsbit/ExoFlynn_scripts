@ECHO OFF
CLS
ECHO ARRAKIS FIX ME UP BATCH FILE
ECHO ----------------------------
ECHO.
ECHO This batch file will fix the files
ECHO that could be possibly damaged by
ECHO Arrakis while it crashed.
ECHO.
ECHO Do not pay attention to possible
ECHO file not found errors, this batch
ECHO file tries to fix all files even
ECHO when they do not excist. But this
ECHO will not harm your system.
ECHO.
ECHO Press a key to fix...
pause
ECHO FIXING: ARRAKIS.SRK
DEL ARRAKIS.SKR
ECHO FIXING: ARRAKIS.LVL
DEL ARRAKIS.LVL
COPY DATA\ARRAKIS.LVL .
ECHO FIXING: ARRAKIS.LV1
DEL ARRAKIS.LV1
COPY DATA\ARRAKIS.LV1 .
ECHO FIXING: ARRAKIS.LV2
DEL ARRAKIS.LV2
COPY DATA\ARRAKIS.LV2 .
ECHO FIXING: GAME.EXE
DEL GAME.EXE
ECHO.
ECHO Done!

