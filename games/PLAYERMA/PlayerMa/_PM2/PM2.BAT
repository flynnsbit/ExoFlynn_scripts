@echo off
SET DOS4G=QUIET
:loop
vga
if errorlevel 1 goto end
main .
goto loop
:end
