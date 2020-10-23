@ECHO OFF
GOTO START

:USAGE
CLS
ECHO Global War v2.7
ECHO Copyright (c) 1997-2004 John Dailey
ECHO Written & Programmed By John Dailey
ECHO.
ECHO Originally Created By Joel Bergen
ECHO.
ECHO LOCAL.BAT for playing game locally.
ECHO.
ECHO Usage:
ECHO.
ECHO   LOCAL.BAT firstname lastname
ECHO.
ECHO Where:
ECHO.
ECHO   firstname = First name of player to use in game.
ECHO   lastname  = Last name of player to use in game.
ECHO.
GOTO END

:START
CLS
IF "%1"=="" GOTO USAGE
IF "%2"=="" GOTO USAGE

WAR /c 0 1 60 %1 %2

:END
