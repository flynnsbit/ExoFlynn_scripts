@echo off
SET DOS4G=quiet
exe\hasmem 4000
if errorlevel 1 goto run4meg
:fullversion
exe\dwg
goto finish
:run4meg
exe\dwg_4m
if not errorlevel 1 goto finish
exe\rundb
goto run4meg
:finish
