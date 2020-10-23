@echo off
if not "%1"=="" goto ProcessCommandLine
rem *** SPEEDRAGE README.BAT ********************* Hexerei.dBug 96
:menu
rem *** Main Menu ************************************************
cls
ccon @mainmenu.eng /k12345THX /d1 /c3 @choice.eng
if errorlevel 8 goto cmd8
if errorlevel 7 goto cmd7
if errorlevel 6 goto cmd6
if errorlevel 5 goto cmd5
if errorlevel 4 goto cmd4
if errorlevel 3 goto cmd3
if errorlevel 2 goto cmd2
goto cmd1

:cmd1
rem *** Installation *********************************************
cls
ccon @install.eng
goto loop

:cmd2
rem *** General Gameplay *****************************************
cls
ccon @general1.eng /k@209@199@27 /d1 @firstp.eng
if errorlevel 3 goto cmd8
if errorlevel 2 goto menu

:page21
cls
ccon @general2.eng /k@209@201@199@27 /d1 @midp.eng
if errorlevel 4 goto cmd8
if errorlevel 3 goto menu
if errorlevel 2 goto cmd2

:page22
cls
ccon @general3.eng /k@209@201@199@27 /d1 @midp.eng
if errorlevel 4 goto cmd8
if errorlevel 3 goto menu
if errorlevel 2 goto page21

:page23
cls
ccon @general4.eng /k@209@201@199@27 /d1 @midp.eng
if errorlevel 4 goto cmd8
if errorlevel 3 goto menu
if errorlevel 2 goto page22

:page24
cls
ccon @general5.eng /k@209@201@199@27 /d1 @midp.eng
if errorlevel 4 goto cmd8
if errorlevel 3 goto menu
if errorlevel 2 goto page23

:page25
cls
ccon @general6.eng /k@199@201@27 /d1 @lastp.eng
if errorlevel 3 goto cmd8
if errorlevel 2 goto page24
goto menu

:cmd3
rem *** Multiplayer Games ****************************************
cls
ccon @multmenu.eng /k1234M /d5 /c3 @choice.eng
if errorlevel 5 goto menu
if errorlevel 4 goto sub34
if errorlevel 3 goto sub33
if errorlevel 2 goto sub32
goto sub31

:sub31
cls
ccon @multiply.eng
goto loop2

:sub32
cls
ccon @network1.eng /k@209@199@27 /d1 @firstp.eng
  cls
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto menu

:page321
cls
ccon @network2.eng
rem other pagebreaks
ccon /k@209@201@199@27 /d1 @midp.eng
  cls
    if errorlevel 4 goto cmd8
    if errorlevel 3 goto menu
    if errorlevel 2 goto sub32

:page322
cls
ccon @network3.eng
rem other pagebreaks
ccon /k@209@201@199@27 /d1 @midp.eng
  cls
    if errorlevel 4 goto cmd8
    if errorlevel 3 goto menu
    if errorlevel 2 goto page321

:page323
cls
ccon @network4.eng
rem other pagebreaks
ccon /k@209@201@199@27 /d1 @midp.eng
  cls
    if errorlevel 4 goto cmd8
    if errorlevel 3 goto menu
    if errorlevel 2 goto page322

cls
ccon @network5.eng
rem last page
ccon /k@199@201@27 /d1 @lastp.eng
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto page323
  goto cmd3

:sub33
cls
ccon @serial1.eng
rem first pagebreak
ccon /k@209@199@27 /d1 @firstp.eng
  cls
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto menu

cls
ccon @serial2.eng
rem last page
ccon /k@199@201@27 /d1 @lastp.eng
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto sub33
  goto cmd3

:sub34
cls
ccon @modem.eng
goto loop2

:sub35
goto menu

:cmd4
rem *** Questions & Answers **************************************
cls
ccon @memory.eng
rem first pagebreak
ccon /k@209@199@27 /d1 @firstp.eng
  cls
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto menu

cls
ccon @general2.eng
rem last page
ccon /k@199@201@27 /d1 @lastp.eng
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto cmd4
  goto menu

:cmd5
rem *** Technical Support ****************************************
cls
ccon @techsupp.eng
goto loop

:cmd6
rem *** Telstar **************************************************
cls
ccon @telstar1.eng
rem first pagebreak
ccon /k@209@199@27 /d1 @firstp.eng
  cls
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto menu

cls
ccon @telstar2.eng
rem last page
ccon /k@199@201@27 /d1 @lastp.eng
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto cmd6
  goto menu

goto loop

:cmd7
rem *** Hexerei **************************************************
cls
ccon @hexerei.eng
goto loop

:cmd8
rem *** Exit *****************************************************
cls
ccon /c14 /bc4 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ccon /c14 /bc4 บ /c15Good bye! /c07and enjoy playing... "                                        " บ
ccon /c14 /bc4 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ\n22
goto Exit

:err
rem *** Error Handling *******************************************
cls
if exist DERR.BAT call derr
pause
goto menu

:loop
ccon /k@199@27 /d1 "/bc1/c14Esc/bc3/c1 Exit /bc1/c14Home/bc3/c1 Mainmenu /bc0"
if errorlevel 2 goto cmd8
goto menu

:loop2
ccon /k@199@27 /d1 "/bc1/c14Esc/bc3/c1 Exit /bc1/c14Home/bc3/c1 Mainmenu /bc0"
if errorlevel 2 goto cmd8
goto cmd3

rem first pagebreak
ccon /k@209@199@27 /d1 @firstp.eng
  cls
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto menu

rem other pagebreaks
ccon /k@209@201@199@27 /d1 @midp.eng
  cls
    if errorlevel 4 goto cmd8
    if errorlevel 3 goto menu
    if errorlevel 2 goto cmd2

rem last page
ccon /k@199@201@27 /d1 @lastp.eng
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto cmd6
  goto menu

:ProcessCommandLine
if "%1"=="?" goto HelpSyntax
if "%1"=="/?" goto HelpSyntax
if "%1"=="-?" goto HelpSyntax
if "%1"=="help" goto HelpSyntax
if "%1"=="Help" goto HelpSyntax
if "%1"=="HELP" goto HelpSyntax

if "%1"=="INSTALL" goto cmd1
if "%1"=="Install" goto cmd1
if "%1"=="install" goto cmd1
if "%1"=="GENERAL" goto cmd2
if "%1"=="General" goto cmd2
if "%1"=="general" goto cmd2
if "%1"=="MODEM" goto sub34
if "%1"=="Modem" goto sub34
if "%1"=="modem" goto sub34
if "%1"=="SERIAL" goto sub33
if "%1"=="Serial" goto sub33
if "%1"=="serial" goto sub33
if "%1"=="NETWORK" goto sub32
if "%1"=="Network" goto sub32
if "%1"=="network" goto sub32
if "%1"=="MEMORY" goto cmd4
if "%1"=="Memory" goto cmd4
if "%1"=="memory" goto cmd4
if "%1"=="SUPPORT" goto cmd5
if "%1"=="Support" goto cmd5
if "%1"=="support" goto cmd5

if "%1"=="TELSTAR" goto cmd6
if "%1"=="Telstar" goto cmd6
if "%1"=="telstar" goto cmd6
if "%1"=="HEXEREI" goto cmd7
if "%1"=="Hexerei" goto cmd7
if "%1"=="hexerei" goto cmd7

echo ERROR: Unknown commandline option '%1'!

goto Exit

:HelpSyntax
ccon /n
ccon  Syntax: /c15HELP/c7 [topic]
ccon /n
echo         Start the main menu with all topics with HELP only.
ccon /n
echo         You can also select one of the following topics
echo         directly, by typing HELP followed by the topic name:
ccon /n
ccon "        (/c15INSTALL/c7) ... Installation and Setup"
ccon "        (/c15GENERAL/c7) ... General Gameplay and controls"
ccon "        (/c15MODEM/c7)   ... Multiplayer Modem Games"
ccon "        (/c15SERIAL/c7)  ... Multiplayer Serial Games"
ccon "        (/c15NETWORK/c7) ... Multiplayer Network Games"
ccon "        (/c15Q&A/c7)     ... Common Questions and Answers"
ccon "        (/c15SUPPORT/c7) ... Technical Support"
ccon /n
ccon "        (TELSTAR/c7) ... Telstar Electronic Studios"
ccon "        (HEXEREI/c7) ... Hexerei Game Developers"
ccon /n4

goto Exit

:Exit
