echo off
cls
DEPTEENA
irun teenage A
if ERRORLEVEL 36 goto HGCNON
if ERRORLEVEL 35 goto HGCOUI
if ERRORLEVEL 26 goto EGANON
if ERRORLEVEL 25 goto EGAOUI
if ERRORLEVEL 16 goto CGANON
if ERRORLEVEL 15 goto CGAOUI
goto FIN
:HGCNON
irun teenage D N
goto FIN
:HGCOUI
irun teenage D O
goto FIN
:EGANON
irun teenage C N
goto FIN
:EGAOUI
irun teenage C O
goto FIN
:CGANON
irun teenage B N
goto FIN
:CGAOUI
irun teenage B O
goto FIN
:FIN
cls
