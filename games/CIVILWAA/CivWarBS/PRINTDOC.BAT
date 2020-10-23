@echo off
cls
if "%1"=="" goto howto
echo Batch program to print documentation for CIVILWAR BATTLESET
echo ÿ
pause Be sure your printer is ON...
if "%1"=="cw" goto cw
if "%1"=="CW" goto cw
type CS.DOC > lpt1
goto fini
:cw
type CW.DOC > lpt1
:howto
echo You must specify which documentation file to print:
echo PRINTDOC CW to print the game documentation
echo PRINTDOC CS to print the set-up editor documentation
:fini
