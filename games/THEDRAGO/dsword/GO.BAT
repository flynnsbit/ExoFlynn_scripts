ECHO OFF
:LOOP
PREVIEW DS MANUAL.DS
IF ERRORLEVEL 255 GOTO EXIT
PAUSE
GOTO LOOP
:EXIT
