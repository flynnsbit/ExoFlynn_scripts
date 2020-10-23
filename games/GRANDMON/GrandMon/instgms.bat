echo off
cls
echo GRAND MONSTER SLAM installation program
echo Please insert START DISK in drive %1
pause

md %2monster
cd %2monster
if %3==E copy %1gmse.bat %2gms.bat
if %3==e copy %1gmse.bat %2gms.bat
if %3==C copy %1gmsc.bat %2gms.bat
if %3==c copy %1gmsc.bat %2gms.bat
if %3==H copy %1gmsh.bat %2gms.bat
if %3==h copy %1gmsh.bat %2gms.bat
copy %1*.* %2

echo Please insert GMS DISK 1 in drive %1
pause
copy %1*.* %2

echo Please insert GMS DISK 2 in drive %1
pause
copy %1*.* %2









