@echo off
cls
echo.
echo Press 1 for the CGA version of Defender of the Crown
echo Press 2 for the EGA version of Defender of the Crown
echo Press 3 to Quit
echo.
choice /C:123 /N

if errorlevel = 3 goto end
if errorlevel = 2 goto ega
if errorlevel = 1 goto cga

:cga
cd cga
doc
goto end

:ega
cd ega
DEFENDER
goto end

:end
