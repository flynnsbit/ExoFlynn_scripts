@echo off
cls
setd
IF ERRORLEVEL 1 GOTO ABORTSETD
setm
IF ERRORLEVEL 1 GOTO FINI
GOTO END

:ABORTSETD
setm
GOTO FINI

:END
call ROADHOG /SETUP
goto FINAL

:FINI
echo.
echo You have aborted the music or sfx driver installation by pressing the
echo [Esc]-key. Would you like to discontinue the setup at this point (like
echo for installing a required driver), or would you like to continue?
echo.
echo [D]iscontinue, [C]ontinue [D/C] ?
ec.exe DC
if ERRORLEVEL 68 goto FINAL
:SETUP
call ROADHOG /SETUP
:FINAL
