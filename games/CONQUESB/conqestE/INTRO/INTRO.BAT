@echo off
:START
select.exe %2
if ERRORLEVEL 5 goto EXITGAME
if ERRORLEVEL 6 goto MPLAY
if ERRORLEVEL 4 goto BABYLON
if ERRORLEVEL 3 goto INTRO
if ERRORLEVEL 2 goto PLAYGAME

:MPLAY
        %1\mplaynow.exe
        goto START
:BABYLON
        dplay %1\intro\b5_d2.rpl
        goto START
:INTRO
        dplay %1\intro\intro.rpl
        goto START
:PLAYGAME
        cd..
        shell %3 %4 %5
        cd intro
        goto START


:EXITGAME

