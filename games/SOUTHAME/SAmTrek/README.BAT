ECHO OFF
CLS
ECHO                        WELCOME TO BUTTONWARE'S GAME SERIES
ECHO  
ECHO    HOW TO START THE GAME
ECHO  
ECHO      SOUTH AMERICAN TREK -
ECHO        1. Be sure the game disk is in drive A
ECHO        2. Type A: and press Enter 
ECHO        3. Type SAMERICA and press Enter
ECHO  
ECHO      If you are using a graphics monitor that only displays
ECHO      one color you should use the M parameter when starting
ECHO      the games  (i.e.  CASTAWAY M).
ECHO  
ECHO NOTE:  To print out the instructions for the games on your
ECHO        printer restart this file by typing README /P
IF .%1 == ./P GOTO PRINT
IF .%1 == ./p GOTO PRINT
GOTO END
:PRINT
ECHO  
ECHO BE SURE YOUR PRINTER IS ON!
PAUSE
ECHO  
ECHO Printing Document
TYPE A:README.TXT >PRN
:END
ECHO  
PAUSE
