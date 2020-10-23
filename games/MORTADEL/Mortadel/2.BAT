echo off
cls
:ciclo
menuega
if errorlevel 2 goto f2
if errorlevel 1 goto f1
goto fin
:f1
fase1ega
goto ciclo
:f2
fase2ega
goto ciclo
:fin
