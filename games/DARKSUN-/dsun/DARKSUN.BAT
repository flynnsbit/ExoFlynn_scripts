@echo off

rem ------------------------------------------------------------------------
rem Darksun, The Shattered Lands
rem
rem This is the batch file shell for the game...
rem
rem This shell will detect a sound card that requires a TSR and load the
rem correct TSR prior to running the game.
rem
rem If no TSR is necessary the game will be run with the given args...
rem
rem Author:     Ralph Thomas
rem
rem Revisions:  08/16/93 Added the un-installation of the TSR's at end run
rem             08/17/93 Changed the game name, minor revisions...
rem ------------------------------------------------------------------------

rem ------------------------------------------------------------------------
rem Detect card
rem ------------------------------------------------------------------------

@echo off

GRAVIS
IF ERRORLEVEL 1 GOTO RUN_GAME
IF "%ULTRADIR%"=="" goto CHECK_ARIA
rem Gravis Found...
IF NOT EXIST SSI1.INI GOTO NO_INSTALL
goto GRAVIS

:CHECK_ARIA
IF "%ARIA%"=="" goto RUN_GAME
rem Aria Found...
goto ARIA

rem ------------------------------------------------------------------------
rem Install the Aria TSR
rem ------------------------------------------------------------------------

:ARIA
rem Running Aria TSR with gm2.bnk
echo.
lh miditsr gm2.bnk /I
if errorlevel 1 goto INS_GM1:
goto RUN_ARIA

:INS_GM1
rem Installation of the GM2 bank failed because of insufficient memory
rem on the card, now try the small bank...
lh miditsr gm1.bnk /I
goto RUN_ARIA

rem ------------------------------------------------------------------------
rem Install the Gravis TSR
rem ------------------------------------------------------------------------

:GRAVIS
rem Run Gravis TSR
lh ultramid -nssi1.ini -q
goto RUN_GRAVIS

rem ------------------------------------------------------------------------
rem Run the Game
rem ------------------------------------------------------------------------

:RUN_ARIA
cls
rem Run the Game
dsun %1 %2 %3 %4 %5 %6 %7 %8 %9
rem Uninstall the TSR
miditsr /U /I
rem Bye...
goto END_RUN

:NO_INSTALL
cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                     บ
echo บ  ERROR: Can't run DARKSUN -- SSI1.INI is missing.   บ
echo บ         Run SOUND first.                            บ
echo บ                                                     บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause
goto END_RUN

:RUN_GRAVIS
cls
rem Run the Game
dsun %1 %2 %3 %4 %5 %6 %7 %8 %9
rem Uninstall the TSR
ultramid -f -q
rem Bye...
goto END_RUN

:RUN_GAME
cls
rem Run the Game
dsun %1 %2 %3 %4 %5 %6 %7 %8 %9
goto END_RUN
rem ------------------------------------------------------------------------
rem Bye...
rem ------------------------------------------------------------------------

:END_RUN
exit