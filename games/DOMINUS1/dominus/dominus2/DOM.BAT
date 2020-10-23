@echo off
set dos4g=
set dos4gvm=1
memtest 575000 3000000
if %errorlevel=1 goto :exit
set dos4g=quiet
loader start.int
main
:exit

