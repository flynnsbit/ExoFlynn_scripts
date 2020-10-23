rem	Prompt for each disk of the game in succession and copy
rem	everything over from it.

echo Copying game files...

:Vol1
exists %2:resource.001
if	not errorlevel 1 goto GetVol1
echo Please insert the disk labeled "Disk 1" in drive %2.
pause
goto Vol1
:GetVol1
copy %2:sierra.com >nul
copy %2:sciv.exe >nul
copy %2:install.exe >nul
copy %2:install.hlp >nul
copy %2:resource.* >nul

:Exit

cd ..

echo	To play Hoyle, type	
echo		cd \sierra
echo	and then
echo		Hoyle

