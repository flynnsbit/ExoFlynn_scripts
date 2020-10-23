@echo off
cls
echo Loading SIMSpace v2.4...
sbsim /q
voice /speaker:on
simspac_ %1 %2
sbsim /q /u
