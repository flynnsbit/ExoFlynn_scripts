rem Install 720K disk version of Trial By Fire to a hard disk
echo Copying game files...
:Vol1
exists %2:resource.001
if	not errorlevel 1 goto GetVol1
echo Please insert the disk labeled "Startup Disk / Disk 1" in drive %2.
pause
goto Vol1
:GetVol1
copy %2:*.* >nul

:Vol2
exists %2:resource.002
if	not errorlevel 1 goto GetVol2
echo Please insert the disk labeled "Disk 2" in drive %2.
pause
goto Vol2
:GetVol2
copy %2:resource.002 >nul

:Vol3
exists %2:resource.003
if	not errorlevel 1 goto GetVol3
echo Please insert the disk labeled "Disk 3" in drive %2.
pause
goto Vol3
:GetVol3
copy %2:resource.003 >nul

:Vol4
exists %2:resource.004
if	not errorlevel 1 goto GetVol4
echo Please insert the disk labeled "Disk 4" in drive %2.
pause
goto Vol4
:GetVol4
copy %2:resource.004 >nul

:Vol5
exists %2:resource.005
if	not errorlevel 1 goto GetVol5
echo Please insert the disk labeled "Disk 5" in drive %2.
pause
goto Vol5
:GetVol5
copy %2:resource.005 >nul

:Vol6
exists %2:resource.006
if	not errorlevel 1 goto GetVol6
echo Please insert the disk labeled "Disk 6" in drive %2.
pause
goto Vol6
:GetVol6
copy %2:resource.006 >nul

:Vol7
exists %2:resource.007
if	not errorlevel 1 goto GetVol7
echo Please insert the disk labeled "Disk 7" in drive %2.
pause
goto Vol7
:GetVol7
copy %2:resource.007 >nul

:Vol8
exists %2:resource.008
if not errorlevel 1 goto GetVol8
echo Please insert the disk labeled "Disk 8" in drive %2.
pause
goto Vol8
:GetVol8
copy %2:resource.008 >nul

:Vol9
exists %2:resource.009
if not errorlevel 1 goto GetVol9
echo Please insert the disk labeled "Disk 9" in drive %2.
pause
goto Vol9
:GetVol9
copy %2:resource.009 >nul

echo	To run Trial By Fire, type
echo		cd \sierra
echo	and then
echo		trial

