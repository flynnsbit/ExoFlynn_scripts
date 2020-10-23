@echo off
vesa.exe
if errorlevel 1 goto run_game
univbe.exe
:run_game
mgp2.exe %1
