:menu
@echo off
cls
echo.
echo Press 1 for Lomax Boulders 1
echo Press 2 for Lomax Boulders 2
echo Press 3 for Lomax Boulders 3
echo Press 4 for Lomax Boulders 4
echo Press 5 for Lomax Boulders 5
echo Press 6 to Quit
echo.
choice /C:123456 /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 5 goto lb5
if errorlevel = 4 goto lb4
if errorlevel = 3 goto lb3
if errorlevel = 2 goto lb2
if errorlevel = 1 goto lb1

:lb1
cls
cd 1
boulders
cd ..
goto menu

:lb2
cls
cd 2
lb2
cd ..
goto menu

:lb3
cls
cd 3
lb3
cd ..
goto me

:lb4
cls
cd 4
lb4
cd ..
goto menu

:lb5
cls
cd 5
lb5
cd ..
goto menu

:quit
exit