@ECHO OFF
IF EXIST SOUNDDIG.CFG GOTO Intro
CDROM.EXE
if ERRORLEVEL 1 Goto Exit
CD \HAMMER
C:\HAMMGOD\SETSOUND USEEXISTING %1 %2 %3 %4 %5 %6 %7 %8 %9
:Intro
CDROM.EXE
if ERRORLEVEL 1 Goto Exit
CD \HAMMER\INTRO
REM HAMINT.EXE is also for the ENDGAME screen, so if the next line is
REM removed, no victory screen will be given at the end of the game.
REM Instead, you can run the game with HAMMER NOINTRO.
C:\HAMMGOD\HAMINT Z %1 %2 %3 %4 %5 %6 %7 %8 %9
if ERRORLEVEL 1 Goto Done
CDROM.EXE
CD \HAMMER
C:\HAMMGOD\HAMGAM Z %1 %2 %3 %4 %5 %6 %7 %8 %9
if ERRORLEVEL 24 Goto Done
if ERRORLEVEL 23 Goto Intro
:Done
CDROM.EXE
CD \
C:
CD \HAMMGOD
:Exit
