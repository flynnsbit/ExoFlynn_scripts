@echo off

subst a: .
cdcont a:
if errorlevel 1 goto end

if exist poy.cfg goto game
setup.exe

:game
uefa
cdcont -u
subst a: /d
exit

:end
