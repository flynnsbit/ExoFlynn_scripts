echo off
cls
:restart
cls
@echo 嬪様様様様様様様様様様様様邑
@echo � XIXIT (c) Optik Software � 
@echo 突様様様様様様様様様様様様裕
@echo �                          �
@echo � (1) Start Game           �
@echo � (2) Setup Game           �
@echo �                          �
@echo � (0) Exit                 �
@echo 青陳陳陳陳陳陳陳陳陳陳陳陳潰
ASK
if errorlevel 3 goto restart
if errorlevel 2 goto setup
if errorlevel 1 goto start
if errorlevel 0 goto einde
WAIT

:start
cls
xixit 
goto einde

:setup
cls
setup
goto restart

:einde
