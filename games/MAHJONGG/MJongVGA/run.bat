:menu
@echo off
cls
echo.
echo Press 1 for Mah Jongg -V-G-A- v1.1
echo Press 2 for Mah Jongg -V-G-A- v2.0
echo Press 3 for Mah Jongg -V-G-A- v2.1
echo Press 4 for Mah Jongg -V-G-A- v2.2
echo Press 5 for Mah Jongg -V-G-A- v3.0
echo Press 6 for Mah Jongg -V-G-A- v3.1
echo Press 7 to Quit
echo.
choice /C:1234567 /N Please Choose:

if errorlevel = 7 goto quit
if errorlevel = 6 goto go6
if errorlevel = 5 goto go5
if errorlevel = 4 goto go4
if errorlevel = 3 goto go3
if errorlevel = 2 goto go2
if errorlevel = 1 goto go1

:go1
cls
cd 1.1
MJVGA
cd ..
goto menu

:go2
cls
cd 2.0
MJVGA20
cd ..
goto menu

:go3
cls
cd 2.1
MJ
cd ..
goto menu

:go4
cls
cd 2.2
MJVGA22 
cd ..
goto menu

:go5
cls
cd 3.0
MJVGA30 R
cd ..
goto menu

:go6
cls
cd 3.1
MJVGA31 R
cd ..
goto menu

:quit
exit