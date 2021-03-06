@echo off
mode co80
rem ****************************************************************
rem *
rem * Batch file to install the AOD expansion disk to a hard drive
rem *
rem * copyright 1995 Dynamix 
rem ****************************************************************

:langSel
cls
echo.
echo.
echo      旼컴컴컴컴컴컴컴�    AOD INSTALLATION    컴컴컴컴컴컴컴컴커
echo      �                 Copyright 1995 Dynamix                  �
echo      �                                                         �
echo      �                                                         �
echo      �  If you want to run the program in English, press 'E'.  �
echo      �                                                         �
echo      � Pour utiliser le programme en fran놹is, appuyez sur 'F'.�
echo      �                                                         �
echo      �   Um das Spiel in Deutsch zu spielen, 'D' eingeben.     �
echo      �                                                         �
echo      �                                                         �
echo      읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo.
echo.


CHUNK\GK.COM

:checkKey
IF ERRORLEVEL 113 IF NOT ERRORLEVEL 114 GOTO end
IF ERRORLEVEL 102 IF NOT ERRORLEVEL 103 GOTO French
IF ERRORLEVEL 101 IF NOT ERRORLEVEL 102 GOTO English
IF ERRORLEVEL 100 IF NOT ERRORLEVEL 101 GOTO German
IF ERRORLEVEL 81  IF NOT ERRORLEVEL 82  GOTO end
IF ERRORLEVEL 70  IF NOT ERRORLEVEL 71  GOTO French
IF ERRORLEVEL 69  IF NOT ERRORLEVEL 70  GOTO English
IF ERRORLEVEL 68  IF NOT ERRORLEVEL 69  GOTO German
goto end

:English
cls
call eng.bat %1
goto end

:German
cls
call ger.bat %1
goto end

:French 
cls
call frn.bat %1
goto end

:end
