
:: GAMES.BAT - Batch file to run the games from a menu
@ECHO OFF
ECHO OFF
CLS
:BMENU
SHOW GAMES
RAT 4,40
:AGAIN
RAT WAIT
IF ERRORLEVEL 253 GOTO MOUSE1
IF ERRORLEVEL  81 GOTO AGAIN
IF ERRORLEVEL  80 GOTO GAMEP
IF ERRORLEVEL  79 GOTO GAMEO
IF ERRORLEVEL  78 GOTO GAMEN
IF ERRORLEVEL  77 GOTO GAMEM
IF ERRORLEVEL  76 GOTO GAMEL
IF ERRORLEVEL  75 GOTO GAMEK
IF ERRORLEVEL  74 GOTO GAMEJ
IF ERRORLEVEL  73 GOTO GAMEI
IF ERRORLEVEL  72 GOTO GAMEH
IF ERRORLEVEL  71 GOTO GAMEG
IF ERRORLEVEL  70 GOTO GAMEF
IF ERRORLEVEL  69 GOTO GAMEE
IF ERRORLEVEL  68 GOTO GAMED
IF ERRORLEVEL  67 GOTO GAMEC
IF ERRORLEVEL  66 GOTO GAMEB
IF ERRORLEVEL  65 GOTO GAMEA
IF ERRORLEVEL  28 GOTO AGAIN
IF ERRORLEVEL  27 GOTO QUIT 
GOTO AGAIN
:MOUSE1
RAT  5,10, 5,37
IF ERRORLEVEL 1 GOTO GAMEA
RAT  7,10, 7,37
IF ERRORLEVEL 1 GOTO GAMEB
RAT  9,10, 9,37
IF ERRORLEVEL 1 GOTO GAMEC
RAT 11,10,11,37
IF ERRORLEVEL 1 GOTO GAMED
RAT 13,10,13,37
IF ERRORLEVEL 1 GOTO GAMEE
RAT 15,10,15,37
IF ERRORLEVEL 1 GOTO GAMEF
RAT 17,10,17,37
IF ERRORLEVEL 1 GOTO GAMEG
RAT 19,10,19,37
IF ERRORLEVEL 1 GOTO GAMEH
RAT  5,44, 5,71
IF ERRORLEVEL 1 GOTO GAMEI
RAT  7,44, 7,71
IF ERRORLEVEL 1 GOTO GAMEJ
RAT  9,44, 9,71
IF ERRORLEVEL 1 GOTO GAMEK
RAT 11,44,11,71
IF ERRORLEVEL 1 GOTO GAMEL
RAT 13,44,13,71
IF ERRORLEVEL 1 GOTO GAMEM
RAT 15,44,15,71
IF ERRORLEVEL 1 GOTO GAMEN
RAT 17,44,17,71
IF ERRORLEVEL 1 GOTO GAMEO
RAT 19,44,19,71
IF ERRORLEVEL 1 GOTO GAMEP
GOTO AGAIN
:GAMEA
SET SG=ATTACK
GOTO RUN
:GAMEB
SET SG=BRICKS
GOTO RUN
:GAMEC
SET SG=MATCH
GOTO RUN
:GAMED
SET SG=CAVEDIVE
GOTO RUN
:GAMEE
SET SG=DPTHCHG
GOTO RUN
:GAMEF
SET SG=LANDMINE
GOTO RUN
:GAMEG
SET SG=LIGHTS
GOTO RUN
:GAMEH
SET SG=MMIND
GOTO RUN
:GAMEI
SET SG=GUESS
GOTO RUN
:GAMEJ
SET SG=PEGS
GOTO RUN
:GAMEK
SET SG=PUZZLE
GOTO RUN
:GAMEL
SET SG=REVERSE
GOTO RUN
:GAMEM
SET SG=REPEAT
GOTO RUN
:GAMEN
SET SG=GALLERY
GOTO RUN
:GAMEO
SET SG=TOWERS
GOTO RUN
:GAMEP
SET SG=WIGGLE
:RUN
CLS
ECHO Loading ....
%SG%
GOTO BMENU
:QUIT
SET SG=
CLS

