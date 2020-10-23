rem     batch file copies SORCERIAN files from
rem         3 1/2 floppies. Only those files
rem         needed for graphics mode are copied
rem
rem     %1  drive to copy to
rem     %2  drive to copy from
rem     %3  e/l for EGA game or LOW resolution game

echo Copying game files...
:Vol1
exists %2:sierra.exe
if	not errorlevel 1 goto GetVol1
echo Please insert the disk labeled "DISK 1 GAME DISK"  into drive %2.
pause
goto Vol1
:GetVol1
mkdir user
mkdir data
mkdir song
mkdir scene01
mkdir scene02
mkdir scene03
copy %2:*.*    >nul
copy %2:\data\*.* .\data\*.* > nul
copy %2:\data\* .\data\*     > nul
copy %2:\song\* .\song\*     > nul

:Vol2
exists %2:\user\SAVE0
if	not errorlevel 1 goto GetVol2
echo Please insert the disk labeled "Disk 2 USER DISK " into drive %2.
pause
goto Vol2
:GetVol2
copy %2:\user\*  .\user\* >nul


:Vol3
exists %2:\scene01\s_000
if	not errorlevel 1 goto GetVol3
echo Please insert the disk labeled "Disk 3 SCENARIO 1" into drive %2.
pause
goto Vol3
:GetVol3
copy %2:\scene01\*.* .\scene01\*.* >nul

:Vol4
exists %2:\scene02\s_100
if	not errorlevel 1 goto GetVol4
echo Please insert the disk labeled "Disk 4 SCENARIO 2" into drive %2.
pause
goto Vol4
:GetVol4
copy %2:\scene02\*.* .\scene02\*.* >nul

:Vol5
exists %2:\scene03\s_200
if	not errorlevel 1 goto GetVol5
echo Please insert the disk labeled "Disk 5 SCENARIO 3" into drive %2.
pause
goto Vol5
:GetVol5
copy %2:\scene03\*.* .\scene03\*.* >nul


:volexit
echo	To run SORCERIAN, type
echo		cd %1:\sierra
echo	and then type
echo		SORCERIA
%1:
cd %1:\sierra
pause
