@ECHO OFF
:START
CLS
ECHO ����������������ͻ
ECHO �                �
ECHO �     Tetris     �
ECHO �                �
ECHO �  [1] IBM CGA   �
ECHO �  [2] IBM EGA   �
ECHO �  [3] Tandy     �
ECHO �                �
ECHO ����������������ͼ
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
