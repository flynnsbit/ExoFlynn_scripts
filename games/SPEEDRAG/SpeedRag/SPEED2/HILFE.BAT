@echo off
if not "%1"=="" goto ProcessCommandLine
rem *** SPEEDRAGE README.BAT ********************* Hexerei.dBug 96
:menu
rem *** Main Menu ************************************************
cls
ccon @mainmenu.ger /k12345THX /d1 /c3 @choice.ger
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
ccon @install.ger
goto loop

:cmd2
rem *** General Gameplay *****************************************
cls
ccon @general1.ger /k@209@199@27 /d1 @firstp.ger
if errorlevel 3 goto cmd8
if errorlevel 2 goto menu

:page21
cls
ccon @general2.ger /k@209@201@199@27 /d1 @midp.ger
if errorlevel 4 goto cmd8
if errorlevel 3 goto menu
if errorlevel 2 goto cmd2

:page22
cls
ccon @general3.ger /k@209@201@199@27 /d1 @midp.ger
if errorlevel 4 goto cmd8
if errorlevel 3 goto menu
if errorlevel 2 goto page21

:page23
cls
ccon @general4.ger /k@209@201@199@27 /d1 @midp.ger
if errorlevel 4 goto cmd8
if errorlevel 3 goto menu
if errorlevel 2 goto page22

:page24
cls
ccon @general5.ger /k@209@201@199@27 /d1 @midp.ger
if errorlevel 4 goto cmd8
if errorlevel 3 goto menu
if errorlevel 2 goto page23

:page25
cls
ccon @general6.ger /k@199@201@27 /d1 @lastp.ger
if errorlevel 3 goto cmd8
if errorlevel 2 goto page24
goto menu

:cmd3
rem *** Multiplayer Games ****************************************
cls
ccon @multmenu.ger /k1234M /d5 /c3 @choice.ger
if errorlevel 5 goto menu
if errorlevel 4 goto sub34
if errorlevel 3 goto sub33
if errorlevel 2 goto sub32
goto sub31

:sub31
cls
ccon @multiply.ger
goto loop2

:sub32
cls
ccon @network1.ger /k@209@199@27 /d1 @firstp.ger
  cls
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto menu

:page321
cls
ccon @network2.ger
rem other pagebreaks
ccon /k@209@201@199@27 /d1 @midp.ger
  cls
    if errorlevel 4 goto cmd8
    if errorlevel 3 goto menu
    if errorlevel 2 goto sub32

:page322
cls
ccon @network3.ger
rem other pagebreaks
ccon /k@209@201@199@27 /d1 @midp.ger
  cls
    if errorlevel 4 goto cmd8
    if errorlevel 3 goto menu
    if errorlevel 2 goto page321

:page323
cls
ccon @network4.ger
rem other pagebreaks
ccon /k@209@201@199@27 /d1 @midp.ger
  cls
    if errorlevel 4 goto cmd8
    if errorlevel 3 goto menu
    if errorlevel 2 goto page322

cls
ccon @network5.ger
rem last page
ccon /k@199@201@27 /d1 @lastp.ger
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto page323
  goto cmd3

:sub33
cls
ccon @serial1.ger
rem first pagebreak
ccon /k@209@199@27 /d1 @firstp.ger
  cls
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto menu

cls
ccon @serial2.ger
rem last page
ccon /k@199@201@27 /d1 @lastp.ger
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto sub33
  goto cmd3

:sub34
cls
ccon @modem.ger
goto loop2

:sub35
goto menu

:cmd4
rem *** Questions & Answers **************************************
cls
ccon @memory.ger
rem first pagebreak
ccon /k@209@199@27 /d1 @firstp.ger
  cls
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto menu

cls
ccon @general2.ger
rem last page
ccon /k@199@201@27 /d1 @lastp.ger
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto cmd4
  goto menu

:cmd5
rem *** Technical Support ****************************************
cls
ccon @techsupp.ger
goto loop

:cmd6
rem *** Telstar **************************************************
cls
ccon @telstar1.ger
rem first pagebreak
ccon /k@209@199@27 /d1 @firstp.ger
  cls
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto menu

cls
ccon @telstar2.ger
rem last page
ccon /k@199@201@27 /d1 @lastp.ger
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto cmd6
  goto menu

goto loop

:cmd7
rem *** Hexerei **************************************************
cls
ccon @hexerei.ger
goto loop

:cmd8
rem *** Exit *****************************************************
cls
ccon /c14 /bc4 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ccon /c14 /bc4 บ /c15Auf Wiedersehen! /c07Und viel Spass beim Spielen.../c14 "                       " บ
ccon /c14 /bc4 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ\n22
goto Exit

:err
rem *** Error Handling *******************************************
cls
if exist DERR.BAT call derr
pause
goto menu

:loop
ccon /k@199@27 /d1 "/bc1/c14Esc/bc3/c1 Beenden /bc1/c14Pos1/bc3/c1 Hauptmenue /bc0"
if errorlevel 2 goto cmd8
goto menu

:loop2
ccon /k@199@27 /d1 "/bc1/c14Esc/bc3/c1 Beenden /bc1/c14Pos1/bc3/c1 Hauptmenue /bc0"
if errorlevel 2 goto cmd8
goto cmd3

rem first pagebreak
ccon /k@209@199@27 /d1 @firstp.ger
  cls
    if errorlevel 3 goto cmd8
    if errorlevel 2 goto menu

rem other pagebreaks
ccon /k@209@201@199@27 /d1 @midp.ger
  cls
    if errorlevel 4 goto cmd8
    if errorlevel 3 goto menu
    if errorlevel 2 goto cmd2

rem last page
ccon /k@199@201@27 /d1 @lastp.ger
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
if "%1"=="hilfe" goto HelpSyntax
if "%1"=="Hilfe" goto HelpSyntax
if "%1"=="HILFE" goto HelpSyntax

if "%1"=="INSTALL" goto cmd1
if "%1"=="Install" goto cmd1
if "%1"=="install" goto cmd1
if "%1"=="SPIEL" goto cmd2
if "%1"=="Spiel" goto cmd2
if "%1"=="spiel" goto cmd2
if "%1"=="MODEM" goto sub34
if "%1"=="Modem" goto sub34
if "%1"=="modem" goto sub34
if "%1"=="SERIELL" goto sub33
if "%1"=="Seriell" goto sub33
if "%1"=="seriell" goto sub33
if "%1"=="NETZWERK" goto sub32
if "%1"=="Netzwerk" goto sub32
if "%1"=="netzwerk" goto sub32
if "%1"=="SPEICHER" goto cmd4
if "%1"=="Speicher" goto cmd4
if "%1"=="speicher" goto cmd4
if "%1"=="TECHNISCH" goto cmd5
if "%1"=="Technisch" goto cmd5
if "%1"=="technisch" goto cmd5

if "%1"=="TELSTAR" goto cmd6
if "%1"=="Telstar" goto cmd6
if "%1"=="telstar" goto cmd6
if "%1"=="HEXEREI" goto cmd7
if "%1"=="Hexerei" goto cmd7
if "%1"=="hexerei" goto cmd7

echo FEHLER: Unbekannte Kommandozeilen Option '%1'!

goto Exit

:HelpSyntax
ccon /n
ccon  Syntax: /c15HILFE/c7 [Thema]
ccon /n
echo         Nur HILFE startet das Hauptmenue mit einer Auswahl.
ccon /n
echo         Du kannst die Themen auch direkt anspringen, wenn Du
echo         hinter HILFE den Themennamen eingibst:
ccon /n
ccon "        (/c15INSTALL/c7)  ... Installation und Setup"
ccon "        (/c15SPIEL/c7)    ... Zum Spiel und Steuerung"
ccon "        (/c15MODEM/c7)    ... Problembehebung Modem Spiel"
ccon "        (/c15SERIELL/c7)  ... Problembehebung Serielles Spiel"
ccon "        (/c15NETZWERK/c7) ... Problembehebung Netzwerk Spiel"
ccon "        (/c15SPEICHER/c7) ... Fragen zu Speicherproblemen"
ccon "        (/c15TECHNISCH/c7)... Technische Unterstuetzung"
ccon /n
ccon "        (/c14TELSTAR/c7)  ... Telstar Electronic Studios"
ccon "        (/c14HEXEREI/c7)  ... Hexerei Game Developers"
ccon /n4

goto Exit

:Exit
