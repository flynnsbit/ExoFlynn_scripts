@echo off
echo "EcoKid V3.0"
:inicio
selector %1
if errorlevel 7 goto fase7
if errorlevel 6 goto fase6
if errorlevel 5 goto fase5
if errorlevel 4 goto fase4
if errorlevel 3 goto fase3
if errorlevel 2 goto fase2
if errorlevel 1 goto fase1
goto fin
:fase1
cd 1
eco
cd..
goto	inicio
:fase2
cd 2
eco
cd..
goto	inicio
:fase3
cd 3
eco
cd..
goto	inicio
:fase4
cd 4
eco
cd..
goto	inicio
:fase5
cd 5
eco
cd..
goto	inicio
:fase6
cd 6
eco
cd..
:fase7
cd 7
eco
cd..
goto	inicio
:fin
