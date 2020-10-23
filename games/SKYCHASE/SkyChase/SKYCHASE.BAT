ECHO OFF
IF EXIST SHOW%1GA.EXE GOTO %1GAVER
IF %1==C GOTO CGAERR
IF %1==c GOTO CGAERR
IF %1==E GOTO EGAERR
IF %1==e GOTO EGAERR
IF %1==V GOTO VGAERR
IF %1==v GOTO VGAERR
IF %1==H GOTO HGAERR
IF %1==h GOTO HGAERR
:GAVER
ECHO --------------------------------------
ECHO I   Please enter the graphics mode   I
ECHO I         (single letter)            I
ECHO I                                    I
ECHO I              C=CGA                 I
ECHO I              E=EGA                 I
ECHO I              V=VGA                 I
ECHO I              H=Hercules            I
ECHO I                                    I
ECHO I        Example: SKYCHASE C         I
ECHO --------------------------------------
GOTO FINISH
REM -------------------------
:CGAVER
screen
SHOWCGA 5
IF ERRORLEVEL 128 GOTO FINISH
CGACHASE
GOTO FINISH
REM -------------------------
:EGAVER
screen
SHOWEGA 5
IF ERRORLEVEL 128 GOTO FINISH
EGACHASE EGA
GOTO FINISH
REM -------------------------
:VGAVER
screen
SHOWVGA 5
IF ERRORLEVEL 128 GOTO FINISH
EGACHASE VGA
GOTO FINISH
REM -------------------------
:HGAVER
screen
SHOWHGA 5
IF ERRORLEVEL 128 GOTO FINISH
HGCCHASE
GOTO FINISH
REM -------------------------
:HGAERR
ECHO --------------------------------------
ECHO I   Please mount the 2nd diskette    I
ECHO I   to run the Hercules version.     I
ECHO --------------------------------------
GOTO FINISH
REM -------------------------
:CGAERR
ECHO --------------------------------------
ECHO I   Please mount the 1st diskette    I
ECHO I      to run the CGA version.       I
ECHO --------------------------------------
GOTO FINISH
REM -------------------------
:EGAERR
ECHO --------------------------------------
ECHO I   Please mount the 1st diskette    I
ECHO I      to run the EGA version.       I
ECHO --------------------------------------
GOTO FINISH
REM -------------------------
:VGAERR
ECHO --------------------------------------
ECHO I   Please mount the 1st diskette    I
ECHO I      to run the VGA version.       I
ECHO --------------------------------------
REM -------------------------
:FINISH
