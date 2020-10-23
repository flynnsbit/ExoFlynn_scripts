echo off 
echo ÿ 
echo ÿ 
rem	----	Make sure that we've got a parameter and that we're on the 
rem	----	proper drive. 
if "%1" == "" goto Usage 
if not exist installh.bat goto Usage 
rem	----	Wait for a keystroke before starting. 
echo off 
echo Hard disk installation for 
echo Thexder
pause 
rem	----	Create or change to the appropriate directory on the hard disk. 
makepath %1\sierra 
if errorlevel 1 goto CantMake 
makepath %1thexder
if errorlevel 1 goto CantMake 
rem	----	Copy the files from disk 1. 
rem copy _thexder.bat %1\sierra\thexder.bat 
echo cd \sierra\thexder >%1\sierra\thexder.bat
echo thexder %%1 %%2 %%3 %%4 %%5 >>%1\sierra\thexder.bat
copy thexder.com %1\sierra\thexder\thexder.com 
copy main*. %1 
copy m. %1
copy t. %1
copy *.bin %1 
rem	----	If vol.2 is not on this disk, prompt for disk 2. 
echo ÿ 
if exist bugdb16.bin goto :Vol2Here 
rem	----	Copy the installation file to the hard disk and execute it. 
rem copy _install.bat %1 
rem %1_install %1 
echo :GetVol2 >%1_install.bat
echo echo Please put disk 2 of >>%1_install.bat
echo echo Thexder >>%1_install.bat
echo echo in the drive. >>%1_install.bat
echo pause >>%1_install.bat
echo if not exist bugdb16.bin goto :GetVol2 >>%1_install.bat
echo :Vol2Here >>%1_install.bat
echo copy *.bin %%1 >>%1_install.bat
echo rem	----	Everything has been copied -- tell the user how >>%1_install.bat
echo rem	----	to start the game. >>%1_install.bat
echo echo ÿ >>%1_install.bat
echo echo ÿ >>%1_install.bat
echo %%1 >>%1_install.bat
echo cd \sierra >>%1_install.bat
echo echo To play Thexder, type >>%1_install.bat
echo echo 	cd \sierra >>%1_install.bat
echo echo Then type >>%1_install.bat
echo echo 	thexder >>%1_install.bat
%1_install %1
:Vol2Here 
rem	----	Everything has been copied -- tell the user how 
rem	----	to start the game. 
echo ÿ 
echo ÿ 
%1 
cd \sierra 
echo To play Thexder, type 
echo 	cd \sierra 
echo Then type 
echo 	thexder 
rem	----	Copy the installation file to the hard disk and execute it. 
rem copy _install.bat %1 
rem %1_install %1 
goto Exit 
rem	----	Tell user that we couldn't create the proper directory 
rem	----	and bail out. 
:CantMake 
echo off 
echo ÿ 
echo ÿ 
echo Unable to create the directory 
echo 	%1\sierra\thexder 
echo Installation cancelled. 
goto Exit 
rem	----	No parameter or not on the proper drive -- tell user how 
rem	----	to use installation program. 
:Usage 
echo off 
echo To install Thexder on 
echo hard disk C:, make the drive 
echo containing the Thexder 
echo disk your current drive, then type 
echo		installh  C: 
echo	If your hard disk has a drive letter 
echo other than C:, use its letter instead. 
:Exit 
