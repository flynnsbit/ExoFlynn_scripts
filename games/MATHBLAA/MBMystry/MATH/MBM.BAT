echo off
if exist graphics.com goto nonstandard
print.exe
goto setup
:nonstandard
graphics.com
:setup
qsetup.exe
if errorlevel 1 goto mbm
call setup
:mbm
prot
go
cls
if exist graphics.com goto theend
printkil.com
:theend
cls
