rem     batch file copies ZELIARD files from
rem         5 1/4 (3 1/2)floppies. Only those files
rem         needed for graphics mode are copied
rem
rem     %1  drive to copy to
rem     %2  drive to copy from
rem     %3  e/l for EGA game or LOW resolution game

echo Copying game files...
:Vol1
exists %2:zeliard.exe
if	not errorlevel 1 goto GetVol1
echo Please insert the disk labeled "DISK 1" disk into drive %2.
pause
goto Vol1
:GetVol1
copy %2:*.*    >nul

:Vol2
exists %2:zelres2.sar
if	not errorlevel 1 goto GetVol2
echo Please insert the disk labeled "DISK 2" disk into drive %2.
pause
goto Vol2
:GetVol2
copy %2:zelres2.sar    >nul

:Vol3
exists %2:zelres3.sar
if	not errorlevel 1 goto GetVol3
echo Please insert the disk labeled "DISK 3" disk into drive %2.
pause
goto Vol3
:GetVol3
copy %2:zelres3.sar    >nul



:volexit
echo	To run ZELIARD, type
echo		cd %1:\gamearts
echo	and then type
echo		ZELIARD
%1:
cd %1:\gamearts
pause
