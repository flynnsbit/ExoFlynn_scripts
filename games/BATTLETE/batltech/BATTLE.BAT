0:BEGINNING
ECHO OFF
CLS
ECHO            Please select the game you would like to play:
ECHO                    F1 = INCEPTION 
ECHO                    F2 = REVENGE 
ECHO                    F3 = MECHWARRIOR 
ECHO                    F4 = QUIT  
ECHO            Enter the number of the game you wish to play.        
:REPLY
REPLY
IF ERRORLEVEL 62 GOTO QUIT1
IF ERRORLEVEL 61 GOTO MECHWARRIOR
IF ERRORLEVEL 60 GOTO REVENGE1
IF ERRORLEVEL 59 GOTO INCEPTION
GOTO REPLY


:REVENGE1
CLS
ECHO            Please select the option you wish to run:
ECHO                    F1 = Play REVENGE 
ECHO                    F2 = Run SETUP 
ECHO                    F3 = QUIT  
ECHO            Enter the number of the game you wish to play.        


:REPLY1
REPLY
IF ERRORLEVEL 61 GOTO BEGINNING
IF ERRORLEVEL 60 GOTO SETUP
IF ERRORLEVEL 59 GOTO REVENGE
GOTO REPLY1


:SETUP
CD REVENGE
SETUP
CD ..
GOTO REVENGE1


:REVENGE
REM ** This is for 386 computers and below
REM ATSLOW /T????
REM ** This is for 486 computers and higher
REM ATSLOW /T???? /Z
CD REVENGE
REVENGE
REM CD..
REM ATSLOW /R
GOTO QUIT


:INCEPTION
REM ** This is for 386 computers and below
REM ATSLOW /T????
REM ** This is for 486 computers and higher
REM ATSLOW /T???? /Z
CD INCEPTION
BTECH
REM CD..
REM ATSLOW /R
GOTO QUIT


:MECHWARRIOR
REM ** This is for 386 computers and below
REM ATSLOW /T????
REM ** This is for 486 computers and higher
REM ATSLOW /T???? /Z
CD MECHWAR
MW
REM CD..
REM ATSLOW /R
GOTO QUIT


:QUIT
cd..

:QUIT1

