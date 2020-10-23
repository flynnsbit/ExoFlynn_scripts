@echo off
cls
echo.
echo Press 1 for CGA version
echo Press 2 for EGA version
echo Press 3 to Quit
echo.
choice /C:123 /N
if errorlevel = 3 goto end
if errorlevel = 2 goto ega
if errorlevel = 1 goto cga


:cga
cd CGAFACES
SET SHGAMES=C:\faces
faces
goto end

:ega
SET SHGAMES=C:\faces
faces v
goto end

:end