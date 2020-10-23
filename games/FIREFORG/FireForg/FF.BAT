@echo off
cls
echo.
echo.
echo (A) Adlib-EGA
echo.
echo (I) internal speaker-EGA
echo.
echo Ihre Wahl bitte:
auswahl a i

if errorlevel 2 goto marke2
if errorlevel 1 goto marke1 

:marke2
ff2ega
goto ende

:marke1
ff2ega a

:ende