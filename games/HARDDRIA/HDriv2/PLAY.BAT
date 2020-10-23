@ECHO OFF
CLS
RESI212c>nul
CLS
ECHO ÿÿÿÿÿÿ[F1] For Game - [F2] For Editor
:START
TESTFKEY
If Errorlevel=2 goto edit
If Errorlevel=1 goto game
goto start
:EDIT
EDIT
GOTO END
:GAME
HD2
:END