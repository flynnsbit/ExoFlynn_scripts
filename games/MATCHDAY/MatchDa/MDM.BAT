@echo off
cls
if exist c:\motddata goto skip
md c:\motddata
:skip
mdmprg.exe
@echo.

