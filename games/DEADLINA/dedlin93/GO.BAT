@echo off
cls
start.exe
if errorlevel 1 goto bad
intro.exe
game.exe
:bad

