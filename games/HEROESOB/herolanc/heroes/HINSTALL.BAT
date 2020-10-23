echo off
if %1x==x goto in
if %1==z goto eh
if %3==h goto hd
if %3==i goto hd
if %3==f goto fd
if %3==g goto od
if %3==o goto od
if %3==p goto od
:in
if EXIST ins.exe goto ir
echo Insert disk B
Pause 
:ir
ins
goto ls
:hd
copy *.* %2:\HEROES
echo Insert Disk B 
Pause
copy *.* %2:\HEROES
if %3==i goto hdt
echo Insert Disk C
Pause 
copy *.* %2:\HEROES
:hdt
%2:
cd \HEROES
if %1==E goto eh
ins *.dat
:eh
cls
echo Enter START to begin game.
goto ls
:fd
if %1==E goto ef
echo Insert disk B in drive A
pause
if NOT EXIST ins.exe goto fd
ins A:*.dat
echo Insert disk C in drive B 
pause
ins B:*.dat
echo Insert disk A in drive B 
pause
ins B:*.dat
goto ef
:od
if %1==E goto ef
echo Insert disk B in drive %2
pause
if not exist ins.exe goto od
ins *.dat
ins *.dat A
if %3 == p goto ef
:od1
echo Insert disk B in drive %2
pause
if NOT EXIST ins.exe goto od1
ins *.dat C
:ef
cls
echo To play, insert disk A in drive %2 and enter START.
:ls
