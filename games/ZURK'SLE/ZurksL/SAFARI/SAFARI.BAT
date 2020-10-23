@echo off
moustest
if errorlevel 1 goto nomouse
SEAL1
goto end
:nomouse
mouse > nul
SEAL1
mouse /u >nul
:end
echo Thank you for using Zurk's Learning Safari
echo   ...From Soleil Software distributed by Knowledge Adventure
