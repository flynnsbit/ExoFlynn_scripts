@echo off
cd grafx\audio
setd
IF ERRORLEVEL 1 GOTO ABORTED1
GOTO END
:ABORTED1
echo Digital Sound Driver configuration was not completed.
GOTO FINI
:END
echo Sound Configuration Complete!
:FINI
cd ..
cd ..
