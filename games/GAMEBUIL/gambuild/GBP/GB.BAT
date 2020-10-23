echo off
:MAIN
gamebild
if errorlevel 3 goto TPAINT
if errorlevel 2 goto SOUNDS
if errorlevel 1 goto TPAINT
goto END
:TPAINT
setmode %1
cls
ECHO Loading TurboPaint...
:RUNPROGRAM
tp
if ERRORLEVEL 37 GOTO NOMEM
if ERRORLEVEL 15 GOTO RUNPROGRAM
goto MAIN
:NOMEM
keypress
goto MAIN
:SOUNDS
sg
goto MAIN
:END
