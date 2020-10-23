@echo off
  cd sound
  REM
  REM check to see if the user has at least version 2.00 of the GUS software
  REM
  IF EXIST %ULTRADIR%\MIDI\ACPIANO.PAT GOTO START
  rem echo :   WARNING: You are running out dated UltraSound     :
  rem echo :   patches. Please contact Advanced Gravis to get    :
  rem echo :   the updated software, (604)431-1807 Mon-Fri       :
  rem echo :   8am to 4pm.                                       :
  GOTO EXIT
  :START
  REM
  REM Find out which configuration file to copy, and then copy to ultramid.ini
  REM
  IF EXIST %ULTRADIR%\MIDI\HONKY.PAT GOTO V206A
  copy UM200.ini ULTRAMID.INI
  GOTO DRIVERS
  :V206A
  IF NOT EXIST %ULTRADIR%\MIDI\TREMSTR.PAT GOTO V206
  IF NOT EXIST %ULTRADIR%\MIDI\CHARANG.PAT GOTO V206
  IF NOT EXIST %ULTRADIR%\MIDI\ECHOVOX.PAT GOTO V206
  copy UM206A.INI ULTRAMID.INI
  goto DRIVERS
  :V206
  copy UM206.INI ULTRAMID.INI
  IF ERRORLEVEL 1 GOTO BAD_COPY
  :DRIVERS
  ECHO 1 > GRAVIS.INI
  :EXIT
  cd ..

