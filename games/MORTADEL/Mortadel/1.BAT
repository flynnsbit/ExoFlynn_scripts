echo off
cls
:ciclo
menucga
if errorlevel 2 goto f2
if errorlevel 1 goto f1
goto fin
:f1
fase1cga
goto ciclo
:f2
fase2cga
goto ciclo
:fin
