echo off
:dinamic
cls
execute menu1
cls
if errorlevel 50 goto prog2  ;"2"
if errorlevel 49 goto prog1  ;"1"
if errorlevel 28 goto dinamic
if errorlevel 27 goto fin    ;ESCAPE
goto dinamic
:prog1
execute army1.dat
goto fin
:prog2
execute army2.dat
:fin
