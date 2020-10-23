@echo off
cd src
if Test%1 == Test GOTO NOCHARS
game -N%1
GOTO Done

:NOCHARS
game

:Done
cd ..


