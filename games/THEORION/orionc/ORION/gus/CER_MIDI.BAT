@echo off
IF EXIST %ULTRADIR%\MIDI\ACPIANO.PAT GOTO START
echo :   WARNING: You are running out dated UltraSound     :
echo :   patches. Please contact Advanced Gravis to get    :
echo :   the updated software, (604)431-1807 Mon-Fri       :
echo :   8am to 4pm.                                       :
pause
GOTO DONE
:START
if exist ultramid.ini del ultramid.ini
REM
REM Find out which configuration file to copy, and then copy to ultramid.ini
REM
IF EXIST %ULTRADIR%\MIDI\HONKY.PAT GOTO V206A
COPY UM200.ini ULTRAMID.INI
GOTO DRIVERS
:V206A
IF NOT EXIST %ULTRADIR%\MIDI\TREMSTR.PAT GOTO V206
IF NOT EXIST %ULTRADIR%\MIDI\CHARANG.PAT GOTO V206
IF NOT EXIST %ULTRADIR%\MIDI\ECHOVOX.PAT GOTO V206
COPY UM206A.INI ULTRAMID.INI
goto DRIVERS
:V206
COPY UM206.INI ULTRAMID.INI
IF ERRORLEVEL 1 GOTO DONE
:DRIVERS
if exist gravis.bat call gravis
LH ULTRAMID -q
:DONE
