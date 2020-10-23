echo off
if not exist letter.2u goto mnscrn
cls
type letter.2u
pause
:mnscrn
cls
echo   V     V    GG      A
echo    V   V   G        A A     CIVIL WAR STRATEGY
echo     V V    G  GG   AAAAA
echo      V      GGGG  A     A
echo ÿ
echo ========================================================================
echo CWS to play the game without going through this batch file
echo INSTALL to load on your hard drive
echo Complete documentation is in the file CWS.DOC
echo Use PRINTDOC to print the documentation
echo On-line help is in the file CWSDOC.COM
echo To skip the opening music use 'Q' switch on DOS command line
echo (Either  GO /Q   or   CWS /Q )
echo ========================================================================
echo ÿ
echo Hit Ctrl-C if you do NOT wish to begin the game
pause Press ENTER to begin VGA CIVIL WAR STRATEGY
cls
echo Loading VGA CIVIL WAR STRATEGY
cws.exe %1
