@echo off

subst a: .
cdcont a:
if errorlevel 1 goto end


setup


cdcont -u
subst a: /d
exit

:end
