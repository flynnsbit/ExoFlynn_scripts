:menu
@echo off
cls
echo.
echo Press 1 for CRW: Metal Jacket (Chinese)
echo Press 2 for CRW: Metal Jacket (Korean)
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cd chn
cls
play.bat
cd ..
goto menu

:bio2
cd kor
cls
play.bat
cd ..
goto menu

:quit
exit