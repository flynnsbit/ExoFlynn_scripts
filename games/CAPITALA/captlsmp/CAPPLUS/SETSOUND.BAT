@echo off
cd sound
setd
IF ERRORLEVEL 1 GOTO ABORTED1
GOTO END
:ABORTED1
echo Digital Sound Driver configuration was not completed.
GOTO FINI
:END
echo .
echo Type "CAP" to start CAPITALISM PLUS.
echo .
:FINI
cd ..
