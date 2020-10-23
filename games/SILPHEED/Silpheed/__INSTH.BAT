rem     batch file copies SILPHEED files from
rem          2 3 1/2 floppies.
rem
rem     %1  drive to copy to
rem     %2  drive to copy from
rem     %3  e/l for EGA game or LOW resolution game

echo Copying game files...
:Vol1
exists %2:sierra.exe
if	not errorlevel 1 goto GetVol1
echo Please insert the disk labeled "DISK 1" disk into drive %2.
pause
goto Vol1
:GetVol1
copy %2:id         >nul
erase %2:id        >nul
copy %2:readme.bat >nul
copy %2:*.exe      >nul
copy %2:*.sav      >nul
copy %2:*.drv      >nul
copy %2:res???     >nul
copy %2:pat???     >nul
copy %2:*.cfg      >nul
copy %2:*.ega      >nul
copy %2:efc???     >nul


:Vol2
exists %2:gdemo.ega
if	not errorlevel 1 goto GetVol2
echo Please insert the disk labeled "Disk 2" into drive %2.
pause
goto Vol2
:GetVol2
copy %2:*.ega >nul
copy %2:res???.* >nul

:volexit
echo	To run SILPHEED, type
echo		cd \sierra
echo	and then type
echo		silpheed
pause
