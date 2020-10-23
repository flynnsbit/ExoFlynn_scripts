echo off
if exist a:skweek.exe goto inst
@echo lancer le programme d'installation a partir du disque A
goto fin
:inst
@echo ************************************************************************
@echo *                   *            SKWEEK            *
@echo *                   *    Copyright Loriciel 1991   *
@echo *                   ********************************
@echo *
@echo ******************** Installation sur disque dur C: ********************
c:
cd\
md skweek
copy a:\*.* c:\skweek
@if exist a:bulle0.ega goto fin
:deb
echo.
echo.
echo. inserez le disque B
echo.
pause
if exist a:bulle0.ega goto suite
goto deb
:suite
copy a:\*.* c:\skweek
:fin
:fin
