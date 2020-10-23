@ECHO OFF
REM Batch File to set up correct ULTRAMID.INI file for
REM Gravis Ultrasound Cards
REM
REM Check to see if the user has at least version 2.00 of the GUS software
REM

If EXIST %ultradir%\midi\acpiano.pat GOTO START

ECHO: Warning: You are running out dated Ultrasound     :
ECHO: patches. Please contact Advanced Gravis to get    :
ECHO: the updated software, (604)431-1807 Mon-Fri       :
ECHO: 8am to 4pm.
GOTO EXIT

:START
REM
REM Find out which configuration file to copy, and then copy to ULTRAMID.INI
REM

IF EXIST %ULTRADIR%\MIDI\HONKY.PAT GOTO V206A

COPY UM200.INI ULTRAMID.INI
GOTO DRIVERS

:V206A
IF NOT EXIST %ULTRADIR%\MIDI\TREMSTR.PAT GOTO V206
IF NOT EXIST %ULTRADIR%\MIDI\CHARANG.PAT GOTO V206
IF NOT EXIST %ULTRADIR%\ECHOVOX.PAT GOTO V206

COPY UM206A.INI ULTRAMID.INI
GOTO DRIVERS

:V206
COPY UM206.INI ULTRAMID.INI
IF ERRORLEVEL 1 GOTO BAD_COPY

:DRIVERS
LH ULTRAMID

@ECHO ON

