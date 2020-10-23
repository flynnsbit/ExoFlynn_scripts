@ECHO OFF
:START
CLS
ECHO ษออออออออออออออออป
ECHO บ                บ
ECHO บ     Tetris     บ
ECHO บ                บ
ECHO บ  [1] IBM CGA   บ
ECHO บ  [2] IBM EGA   บ
ECHO บ  [3] Tandy     บ
ECHO บ                บ
ECHO ศออออออออออออออออผ
ASK
IF ERRORLEVEL 52 GOTO START
IF ERRORLEVEL 51 GOTO 3
IF ERRORLEVEL 50 GOTO 2
IF ERRORLEVEL 49 GOTO 1
GOTO START
:1
CTETRIS
GOTO END
:2
ETETRIS
GOTO END
:3
TTETRIS
:END
CLS
