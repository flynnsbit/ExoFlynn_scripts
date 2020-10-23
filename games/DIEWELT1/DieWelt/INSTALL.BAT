@echo off
if "%2"=="" goto fehler
if "%1"=="" goto fehler
md %2\Die_Welt
md %2\Die_Welt\Data
copy %1\*.* %2\Die_Welt
copy %1\data\*.* %2\Die_Welt\data
echo Wechseln Sie jetzt in das Verzeichnis DIE_WELT.
echo Mit `WELT' starten Sie das Spiel.
goto ende
:fehler
echo Bitte geben Sie Quell- und Ziellaufwerk an, z.B.:
echo install A: C:
:ende

