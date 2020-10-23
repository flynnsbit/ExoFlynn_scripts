@echo off
set DOS4G=quiet
testmem
if ERRORLEVEL 18 goto meg8

ecst4meg -s
goto end

:meg8
ecst8meg -s

:end
