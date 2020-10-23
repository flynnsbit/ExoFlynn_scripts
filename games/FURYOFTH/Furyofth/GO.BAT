@echo off
intro
lang
fury.exe
if not errorlevel 1 goto fin
mode cO80
echo Not enough memory...
:fin



