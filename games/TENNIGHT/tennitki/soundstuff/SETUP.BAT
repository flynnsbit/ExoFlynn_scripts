@echo off
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
echo Sound Configuration Complete!
echo Type MENU to demo sound and music.
echo Demonstration executables are:
echo	 TEST
echo	 TEST16
echo	 PEND PEND.SND
echo and SEGUE
:FINI
