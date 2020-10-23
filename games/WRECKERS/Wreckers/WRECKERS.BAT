ECHO OFF
CLS
ECHO ********************************
ECHO *********              *********
ECHO *********   WRECKERS   *********
ECHO *********              *********
ECHO ********************************
ECHO 1) CGA
ECHO 2) EGA
ECHO 3) VGA
echo 4) Hercules/MDA

OPTIONS
if errorlevel 4 goto hgc
IF ERRORLEVEL 3 GOTO VGA
IF ERRORLEVEL 2 GOTO EGA
IF ERRORLEVEL 1 GOTO CGA
GOTO finish

:CGA
IF EXIST WC.EXE GOTO CGARUN
ECHO Please insert Program Disc	1
PAUSE
GOTO CGA
:CGARUN
IF EXIST WC.EXE WC
GOTO FINISH

:EGA
IF EXIST WE.EXE GOTO EGARUN
ECHO Please insert Program Disc	1
PAUSE
GOTO EGA
:EGARUN
IF EXIST WE.EXE WE
GOTO FINISH

:VGA
IF EXIST WV.EXE GOTO TANDYRUN
ECHO Please insert Program Disc	1
PAUSE
GOTO VGA
:TANDYRUN
IF EXIST WV.EXE WV
goto finish

:hgc
if exist wc.exe goto hercrun
echo please insert program disc 1
pause
goto hgc
:hercrun
if exist wh.exe wc h

:FINISH



