@echo off
tm %1 %2 %3
if NOT ERRORLEVEL 1 r %1 %2 %3
