:menu
@echo off
cls
echo.
echo Press 1 for Jow Snow Episode 1
echo Press 2 for Jow Snow Episode 2
echo Press 3 for Jow Snow Episode 3: Captured By Aliens
echo Press 4 for Jow Snow Episode 4
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto epi4
if errorlevel = 3 goto epi3
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cd joe1
joe1
cd ..
cls

goto menu

:epi2
cd joe2
joe2
cd ..
cls

goto menu

:epi3
cd joe3
joe3
cd ..
cls

goto menu

:epi4
cd joe4
joe4
cd ..
cls

goto menu

:quit
exit