@echo off
cd sound
setd
IF ERRORLEVEL 1 GOTO ABORTED1
setm
IF ERRORLEVEL 1 GOTO ABORTED2
GOTO END
:ABORTED1
echo Digital Sound Driver configuration was not completed.
GOTO FINI
:ABORTED2
echo Midi Music Driver configuration was not completed.
GOTO FINI
:END
echo .
echo Type "CAP" to start CAPITALISM.
echo .
:FINI
cd ..
