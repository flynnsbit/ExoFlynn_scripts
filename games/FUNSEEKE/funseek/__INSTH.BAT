echo Copying game files...
:Vol1
exists %2:resource.001
if	not errorlevel 1 goto GetVol1
echo Please insert the disk in drive %2.
pause
goto Vol1
:GetVol1
copy %2:resource.* >nul
copy %2:sciv.exe >nul
copy %2:sierra.com >nul
copy %2:install.* >nul

echo	To run Fun-Seekers Guide, type
echo		cd \sierra
echo	and then
echo		fun

