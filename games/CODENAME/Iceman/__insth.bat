echo Copying game files...

:Vol1
exists %2:resource.001
if not errorlevel 1 goto GetVol1
echo Please insert the disk in drive %2.
pause
goto Vol1
:GetVol1
copy %2:resource.* >nul
copy %2:sciv.exe >nul
copy %2:sierra.com >nul
copy %2:install.* >nul
copy %2:version >nul

:Vol2
exists %2:resource.002
if	not errorlevel 1 goto GetVol2
echo Please insert the disk labeled "Disk 2" in drive %2.
pause
goto Vol2
:GetVol2
copy %2:*.* >nul

:Vol3
exists %2:resource.003
if	not errorlevel 1 goto GetVol3
echo Please insert the disk labeled "Disk 3" in drive %2.
pause
goto Vol3
:GetVol3
copy %2:*.* >nul

:Vol4
exists %2:resource.004
if	not errorlevel 1 goto GetVol4
echo Please insert the disk labeled "Disk 4" in drive %2.
pause
goto Vol4
:GetVol4
copy %2:*.* >nul

echo	To run Iceman, type
echo		cd \sierra
echo	and then
echo		ice

