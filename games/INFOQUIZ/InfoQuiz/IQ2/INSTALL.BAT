echo off
cls
if %1: == : goto NOTE
if %1 == C: goto INFO
if %1 == c: goto INFO
if %1 == D: goto INFO
if %1 == d: goto INFO
if %1 == a: goto DOIT
if %1 == A: goto DOIT
if %1 == b: goto DOIT
if %1 == B: goto DOIT
:NOTE
echo �======================================================================
echo �==                                                                  ==
echo  ==                       I N F O  Q U I Z                           ==
echo �==                          Version 2.0                             ==
echo �==                                                                  ==
echo  ==  This program will help you correctly install INFO QUIZ Ver. 2.0 ==
echo �==  to your hard drive.  There have been some last-minute improve-  ==
echo �==  ments so please read the following information to insure that   ==
echo �==  you install INFO QUIZ correctly:                                ==
echo �==                                                                  ==
echo �==  NOTE: If you wish to operate INFO QUIZ Ver. 2.0 using your      ==
echo �==        floppy drives, then do not install the program.           ==
echo �==                                                                  ==
echo �==  * When typing the INSTALL command, be sure to include both the  ==
echo  ==    source drive (usually A: or B:) followed by a space and then  ==
echo �==    the destination drive (usually C: or D:).                     ==
echo �==                                                                  ==
echo  ==  EXAMPLES: If you wanted to install IQv2 from your B: Drive to   ==
echo �==  your C: Drive, insert the Disk in your B: Drive and type:       ==
echo �==  INSTALL B: C:.  If you wanted to install IQv2 from Drive A: to  ==
echo �==  Drive D:, you would insert Disk in your A: Drive and type       ==
echo �==  INSTALL A: D:.                                                  ==
echo �==                                                                  ==
echo �======================================================================
pause
cls
goto END
:DOIT
if %2: == : goto INFO
cls
echo This program will now install INFO QUIZ Ver. 2.0
echo from your %1 Drive to your %2 Drive
echo Press any key to continue or "Ctrl-Break" to exit.
echo �
pause
echo �
echo �
echo Installing INFO QUIZ Ver. 2.0.... 
echo �
echo Copying files...
%2
cd\
md IQ2
cd IQ2
cd
copy %1*.* 
echo �
cls
echo �
echo Installation completed successfully!
echo �
echo To use INFO QUIZ Ver. 2.0, type:
echo �
echo    %2
echo    cd\IQ2
echo    QUIZ
echo �
echo �
echo �This will begin the QUIZ program of INFO QUIZ.  Please consult your
echo �manual to run the additional INFO QUIZ programs.
echo �
goto END
:INFO
echo   To install INFO QUIZ Ver. 2.0 to your hard drive, you need to 
echo � enter both the source drive (A: or B:) and the hard drive (C:-F:).
echo �
echo �                     INSTALL [source] [hard drive]
echo �
echo Examples: INSTALL A: C: or INSTALL B: D:
echo �
echo �
:END