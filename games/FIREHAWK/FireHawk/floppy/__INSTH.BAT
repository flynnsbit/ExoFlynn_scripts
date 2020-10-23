rem     batch file copies THEXDER II FIREHAWK files from
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
copy %2:*.*    >nul
erase fileid3

:Vol2
exists %2:res2.ix
if	not errorlevel 1 goto GetVol2
echo Please insert the disk labeled "DISK 2 MISSION DISK"  into drive %2.
pause
goto Vol2
:GetVol2
copy %2:*.*    >nul


:volexit
echo	To run THEXDER II FIREHAWK, type
echo		cd %1:\sierra
echo	and then type
echo		THEX2
%1:
cd %1:\sierra
pause
