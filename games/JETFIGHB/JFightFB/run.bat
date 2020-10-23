:menu
@echo off
cls
echo.
echo For an unknown reason, when the sun comes into view in the
echo 3DFX version, the game begins to lag horribly.
echo.
echo Press 1 for JetFighter Full Burn
echo Press 2 for JetFighter Full Burn 3DFX
echo Press 3 to Quit
echo.
echo. Note: 3DFX version does not run well in windowed mode.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
@cd jffb
@fb
cd ..
goto quit

:bio2
cls
@cd jffbx
@fb
cd ..
goto quit

:quit
exit