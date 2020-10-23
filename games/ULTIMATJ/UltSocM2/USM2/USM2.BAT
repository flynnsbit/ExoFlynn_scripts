@echo off
league
if errorlevel 3 goto german
if errorlevel 2 goto french
if errorlevel 1 goto english
goto end

:english
usm2e.exe
goto end

:french
usm2f.exe
goto end

:german
usm2g.exe
goto end
:end
