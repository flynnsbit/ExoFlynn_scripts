@echo off
if "%1"=="torch" goto take-torch
if "%1"=="lunch" goto take-lunch
if "%1"=="map" goto take-map
if "%1"=="chest" goto take-chest
if "%1"=="raft" goto take-raft
if "%1"=="sword" goto take-sword
if "%1"=="treasure" goto take-treasure
if "%1" == "the" take %2
goto cant-take

:take-torch
if "%hb1%"=="me" goto already-got
if not "%hb1%"=="%hbr%" goto cant-see
set hb1=me
goto taken

:take-lunch
if "%hb2%"=="me" goto already-got 
if not "%hb2%"=="%hbr%" goto cant-see
set hb2=me
goto taken

:take-map
if "%hb3%"=="me" goto already-got
if not "%hb3%"=="%hbr%" goto cant-see
set hb3=me
goto taken

:take-chest
if not "%hbr%" == "home" goto cant-see
goto cant-take

:take-raft
if not "%hb5%"=="%hbr%" goto cant-see
goto cant-take

:take-sword
if "%hb6%"=="me" goto already-got
if not "%hb6%"=="%hbr%" goto cant-see
set hb6=me
goto taken

:take-treasure
if "%hb7%"=="me" goto already-got
if not "%hb7%"=="%hbr%" goto cant-see
set hb7=me
goto taken

:already-got
echo You are already carrying that.
goto exit

:cant-take
echo You can't take that.
goto exit

:cant-see
echo You can't see it here.
goto exit

:taken
echo You take the %1.

:exit
