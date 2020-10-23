@echo off
set DOS4GVM=
memtest
if errorlevel 1 goto vir
goto nor
:vir
echo Now setting virtual memory system.
mig Z
logo 0
set DOS4GVM=@NEW4G.VMC
zyclunt
goto end
:nor
mig Z
logo 0
zyclunt
goto end
:end
set DOS4GVM=
