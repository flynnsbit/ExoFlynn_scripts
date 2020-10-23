:menu
@echo off
cls
echo.
echo Press 1 for Risk CGA Version
echo Press 2 for Risk EGA Version
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cls
cd cga
risk
cd ..
goto menu

:epi2
cls
cd ega
EGARISK
cd ..
goto menu

:quit
exit