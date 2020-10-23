@echo off
cls
Echo.
Echo BOMB'X - cop. MEDIAGOGO 94.
Echo ----------------------------------------
Echo.
echo Press 1 to play BOMB'X in mode VGA 16 colors.
echo.
Echo Press 2 to pkay BOMB'X in mode MCGA 256 colors.
echo.
Echo Press 0 to exit.
wkey
rem
rem
if errorlevel 12 goto appui2
if errorlevel 11 goto appui1
if errorlevel 10 goto appui0
goto fin
:appui0
goto fin
:appui1
BOMBX16
goto fin
:appui2
BOMBX256
:fin
echo on
