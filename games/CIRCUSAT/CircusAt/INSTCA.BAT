@echo off
cls
echo CIRCUS ATTRACTIONS installation program
echo Press key to begin
pause
md %2circus
cd %2circus
if %3==E copy %1cae.bat %2ca.bat
if %3==e copy %1cae.bat %2ca.bat
if %3==C copy %1cac.bat %2ca.bat
if %3==c copy %1cac.bat %2ca.bat
copy %1*.* %2

echo Installation completed!
echo type README for more informations


