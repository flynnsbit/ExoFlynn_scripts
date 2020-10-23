echo off
:top
cls
:menu
echo      XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo      XXX                                                              XXX
echo      XXX                  S e X X y    S o f t w a r e                XXX
echo      XXX                                                              XXX
echo      XXX                                                              XXX
echo      XXX                  S e X X c a p a d e s                       XXX
echo      XXX                                                              XXX
echo      XXX                                                              XXX
echo      XXX                                                              XXX
echo      XXX                  S e X X y    D i s k    # SG1               XXX
echo      XXX______________________________________________________________XXX
echo      XXX                                                              XXX
echo      XXX        To run game                                Enter  1   XXX
echo      XXX                                                              XXX
echo      XXX        To print out instructions                  Enter  2   XXX
echo      XXX                                                              XXX
echo      XXX        To print out more info on SeXXy Software   Enter  3   XXX
echo      XXX                                                              XXX
echo      XXX        To install the program onto a hard disk    Enter  4   XXX
echo      XXX                                                              XXX
echo      XXX        To return to the DOS system                Enter  5   XXX
echo      XXX______________________________________________________________XXX
:testit
getkeyd 
if errorlevel 54 goto badkey   
if errorlevel 53 goto endit
if errorlevel 52 goto install
if errorlevel 51 goto catit  
if errorlevel 50 goto inst  
if errorlevel 49 goto runit 
if errorlevel 48 goto badkey   
echo            Incorrect key entered
goto badkey    
:runit 
if not exist SEXCAPAD.EXE   goto mustinstall
echo     You can run the program directly by entering: SEXCAPAD         
SEXCAPAD         
goto done    
:install 
echo     Now installing from floppy drive A: to hard drive C:
copy a:sg1.doc c:
copy a:sexxycat c:
copy a:getsexxy.bat c:
copy a:getkeyd.com c:
a:install a: c:
goto done
:catit
TYPE SEXXYCAT >PRN
goto done
:badkey    
echo            Please press 1, 2, 3, 4, or 5
goto top
:endit
cls
echo            THANKS FROM SeXXy Software
goto done
:inst
type sg1.doc >prn
goto top
:mustinstall
echo           You must install the program before running
pause
goto top
:done



