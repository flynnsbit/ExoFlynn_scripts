@echo off
driver
:beg
echo off
driver menu
if ERRORLEVEL 4 goto beg
if ERRORLEVEL 3 goto beg
if ERRORLEVEL 2 goto prg1
if ERRORLEVEL 1 goto end
goto beg
:prg1
captain
goto beg
:end
