@echo off
cohort.exe
if errorlevel 2 goto end
:loop
csr.exe cohort
if errorlevel 2 goto end
cohort.exe caesar
if errorlevel 2 goto end
goto loop
:end
