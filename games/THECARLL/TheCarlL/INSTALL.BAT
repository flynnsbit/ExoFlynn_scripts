echo off
if "%1"=="" echo Usage: 'install drive' eg 'install c:' Will put game in directory CARL drive C
if "%1"=="" goto quit

echo Put Disc 1 In Drive
pause
md %1\carl
md %1\carl\fonts
md %1\carl\pics
md %1\carl\pics2
md %1\carl\javpics
md %1\carl\sfx

copy *.* %1\carl
copy pics\*.* %1\carl\pics
copy sfx\*.* %1\carl\sfx
copy read1.doc %1\carl\hd

echo Insert Disc 2 In Drive
pause

copy *.* %1\carl
copy pics\*.* %1\carl\pics
copy fonts\*.* %1\carl\fonts

echo Insert Disc 3 In Drive
pause

copy *.* %1\carl
copy pics\*.* %1\carl\pics
copy pics2\*.* %1\carl\pics2
copy sfx\*.* %1\carl\sfx


echo Insert Disc 4 In Drive
pause

copy *.* %1\carl
copy javpics\*.* %1\carl\javpics

echo Insert Disc 5 In Drive
pause

copy *.* %1\carl
copy javpics\*.* %1\carl\javpics

del %1\carl\carl.bat
ren %1\carl\carlhd.bat carl.bat

echo Install Is Now Complete.
pause
:quit
