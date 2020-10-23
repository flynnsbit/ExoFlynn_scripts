:menu
@echo off
cls
echo.
echo Press 1 for Proton Field Alpha (Easy)
echo Press 2 for Proton Field Beta (Moderate)
echo Press 3 for Proton Field Gamma (Moderate)
echo Press 4 for Proton Field Delta (Difficult)
echo Press 5 for Proton Field Theta (Difficult)
echo Press 6 to Quit
echo.
choice /C:123456 /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 5 goto epi5
if errorlevel = 4 goto epi4
if errorlevel = 3 goto epi3
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cls
PROTON Alpha 4
goto menu

:epi2
cls
PROTON Beta 4
goto menu

:epi3
cls
PROTON Gamma 4
goto menu

:epi4
cls
PROTON Delta 4
goto menu

:epi5
cls
PROTON Theta 4
goto menu

:quit
exit