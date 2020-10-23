@echo off
set dos4gvm=1
cd game
if not exist err goto chkgerr
del err 

:chkgerr
if not exist gerr goto startgame
del gerr 

:startgame
rem usk 16
call startmen.bat
cd..
set dos4gvm=
