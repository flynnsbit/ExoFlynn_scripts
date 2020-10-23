@ECHO OFF
IF EXIST SOUND.CFG GOTO  RUNGAME
SETSOUND
:RUNGAME
CHKMEM
IF ERRORLEVEL=1 GOTO NOMEM
PD
GOTO END
:NOMEM
ECHO There is not enough memory available to run Pinball Dreams.
ECHO You need a minimum of 530k free.
ECHO Please see the 'Troubleshooting' section of your manual for guidance.
:END
