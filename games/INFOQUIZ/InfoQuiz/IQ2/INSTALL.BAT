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
echo ÿ======================================================================
echo ÿ==                                                                  ==
echo  ==                       I N F O  Q U I Z                           ==
echo ÿ==                          Version 2.0                             ==
echo ÿ==                                                                  ==
echo  ==  This program will help you correctly install INFO QUIZ Ver. 2.0 ==
echo ÿ==  to your hard drive.  There have been some last-minute improve-  ==
echo ÿ==  ments so please read the following information to insure that   ==
echo ÿ==  you install INFO QUIZ correctly:                                ==
echo ÿ==                                                                  ==
echo ÿ==  NOTE: If you wish to operate INFO QUIZ Ver. 2.0 using your      ==
echo ÿ==        floppy drives, then do not install the program.           ==
echo ÿ==                                                                  ==
echo ÿ==  * When typing the INSTALL command, be sure to include both the  ==
echo  ==    source drive (usually A: or B:) followed by a space and then  ==
echo ÿ==    the destination drive (usually C: or D:).                     ==
echo ÿ==                                                                  ==
echo  ==  EXAMPLES: If you wanted to install IQv2 from your B: Drive to   ==
echo ÿ==  your C: Drive, insert the Disk in your B: Drive and type:       ==
echo ÿ==  INSTALL B: C:.  If you wanted to install IQv2 from Drive A: to  ==
echo ÿ==  Drive D:, you would insert Disk in your A: Drive and type       ==
echo ÿ==  INSTALL A: D:.                                                  ==
echo ÿ==                                                                  ==
echo ÿ======================================================================
pause
cls
goto END
:DOIT
if %2: == : goto INFO
cls
echo This program will now install INFO QUIZ Ver. 2.0
echo from your %1 Drive to your %2 Drive
echo Press any key to continue or "Ctrl-Break" to exit.
echo ÿ
pause
echo ÿ
echo ÿ
echo Installing INFO QUIZ Ver. 2.0.... 
echo ÿ
echo Copying files...
%2
cd\
md IQ2
cd IQ2
cd
copy %1*.* 
echo ÿ
cls
echo ÿ
echo Installation completed successfully!
echo ÿ
echo To use INFO QUIZ Ver. 2.0, type:
echo ÿ
echo    %2
echo    cd\IQ2
echo    QUIZ
echo ÿ
echo ÿ
echo ÿThis will begin the QUIZ program of INFO QUIZ.  Please consult your
echo ÿmanual to run the additional INFO QUIZ programs.
echo ÿ
goto END
:INFO
echo   To install INFO QUIZ Ver. 2.0 to your hard drive, you need to 
echo ÿ enter both the source drive (A: or B:) and the hard drive (C:-F:).
echo ÿ
echo ÿ                     INSTALL [source] [hard drive]
echo ÿ
echo Examples: INSTALL A: C: or INSTALL B: D:
echo ÿ
echo ÿ
:END