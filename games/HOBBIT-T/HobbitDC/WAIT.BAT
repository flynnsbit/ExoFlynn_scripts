@echo off

if "%hbr%" == "clearing" if not "%hbs%" == "YES" goto wait-clearing
echo Time passes...
goto exit

:wait-clearing
echo A new day dawns. The trolls seem rather surprised, and rigid with fear.
set hbs=YES

:exit
