@echo off
cls
Echo        THINKING GAMES 2
Echo       ------------------
echo         Please Wait ...
adapter
if errorlevel 2 goto VGA
goto EXIT
:VGA
ve_tg2 intro
ve_tg2 ve_tg2 /NI
:EXIT
cls
echo on
