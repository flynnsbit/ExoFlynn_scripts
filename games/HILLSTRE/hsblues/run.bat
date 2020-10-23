@echo off
cls
echo.
echo Press 1 for VGA\EGA Version
echo Press 2 for CGA Version
echo Press 3 to Quit
echo.
choice /C:123 /N

if errorlevel = 3 goto end
if errorlevel = 2 goto cga
if errorlevel = 1 goto vga

:cga
HSB_CGA.EXE
goto end

:vga
HSB_VGA.EXE
goto end

:end