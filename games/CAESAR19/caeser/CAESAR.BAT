@echo off
csr.exe
if errorlevel 2 goto end
:loop
cohort.exe caesar
if errorlevel 2 goto end
csr.exe cohort
if errorlevel 2 goto end
goto loop
:end
