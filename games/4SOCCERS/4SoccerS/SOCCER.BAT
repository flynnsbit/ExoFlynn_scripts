echo off
status
if errorlevel=3 GOTO HEAD
if errorlevel=2 GOTO HEAD
emma
:HEAD
menu
if errorlevel=5 GOTO HEAD
if errorlevel=4 GOTO SKILLS
if errorlevel=3 GOTO STREET
if errorlevel=2 GOTO INDOOR
if errorlevel=1 GOTO ELEVEN
GOTO HEAD
:SKILLS
skill.exe
GOTO HEAD
:ELEVEN
El.exe
cls
echo ESTE NIVEL NO EXISTE
PAUSE
GOTO HEAD
:STREET
street.exe
GOTO HEAD
:INDOOR
indoor.exe
GOTO HEAD
:ENDIT
       