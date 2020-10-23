@ECHO OFF
CHKMEM
IF ERRORLEVEL=1 GOTO NOMEM

:chksnd
if exist "sound.cfg" goto run
goto :nosnd

:run
PD2
GOTO END

:nosnd
call setsound.exe
goto chksnd

:NOMEM
ECHO There is not enough memory available to run Pinball Dreams II.
ECHO You need a minimum of 560k free.
ECHO Please see the 'Troubleshooting' section of your manual for guidance.
:END
