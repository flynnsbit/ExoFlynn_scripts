:menu
@echo off
cls
echo.
echo Press 1 for Dreams to Reality
echo Press 2 for Dreams to Reality 3DFX
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
cd .\cryo\dreams
aspect true
DREAMS
cd ..
cd ..
goto menu

:bio2
cls
cd .\cryo\dreams
aspect false
DREAMSFX
cd ..
cd ..
goto menu

:quit
exit