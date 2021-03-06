@ECHO OFF
IF EXIST HEXX.CFG GOTO RUN
SETUP
:RUN
EMSTEST
IF ERRORLEVEL 1 GOTO EX2
IF EXIST GRAV.CFG GOTO GR
GOTO EG
:GR
GRAVIS\MEGAEM -p
IF ERRORLEVEL 1 GOTO GF
GRAVIS\EMUSET -v13
IF ERRORLEVEL 1 GOTO GF
GOTO EG
:GF
ECHO Failed to initialise GRAVIS drivers
PAUSE
GOTO EX2
:EG
ANIMPLAY
IF ERRORLEVEL 2 GOTO NEW
IF ERRORLEVEL 1 GOTO PLAY
GOTO EX
:NEW
CHARGEN
:PLAY
IF EXIST GRAV.CFG GOTO GR2
GOTO PL2
:GR2
GRAVIS\EMUSET -v13
:PL2
WIZ
:EX
IF EXIST GRAV.CFG GOTO GOUT
GOTO EX3
:GOUT
GRAVIS\MEGAEM -U
:EX3
ECHO Thanks for playing Hexx
:EX2
@ECHO ON