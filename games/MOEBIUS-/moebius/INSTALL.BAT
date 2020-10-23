echo off
echo ÿ
echo ÿ
rem	----	Make sure that we've got a parameter and that we're on the
rem	----	proper drive.
if "%1" == "" goto Usage
if not exist install.bat goto Usage
rem	----	Wait for a keystroke before starting.
echo off
echo Hard disk installation for Moebius
pause
rem	----	Create or change to the appropriate directory on the hard disk.
setpath %1\games
if errorlevel 1 goto CantMake
setpath %1moebius
if errorlevel 1 goto CantMake
rem	----	Copy the files from disk A.
rem copy _moebius.bat %1\games\moebius.bat
echo cd \games\moebius >%1\games\moebius.bat
echo moebius %%1 %%2 %%3 %%4 %%5 >>%1\games\moebius.bat
copy moebius.exe %1\games\moebius\moebius.exe
copy *.ovl %1
copy *.cor %1
copy *.tlb %1
copy *.mtx %1
copy *.dat %1
copy *.slb %1
rem	----	If disk.B is not on this disk, prompt for disk B.
echo ÿ 
if exist book.dat goto :VolBHere
rem	----	Copy the installation file to the hard disk and execute it.
rem copy _install.bat %1
rem %1_install %1
echo :GetVolB >%1_install.bat
echo echo Please put disk B of Moebius >>%1_install.bat
echo echo in the drive. >>%1_install.bat
echo pause >>%1_install.bat
echo if not exist book.dat goto :GetVolB >>%1_install.bat
echo :VolBHere >>%1_install.bat
echo copy *.ovl %%1 >>%1_install.bat
echo copy *.dat %%1 >>%1_install.bat
echo copy *.cor %%1 >>%1_install.bat
echo copy *.tlb %%1 >>%1_install.bat
echo rem	----	Everything has been copied -- tell the user how >>%1_install.bat
echo rem	----	to start the game. >>%1_install.bat
echo echo ÿ >>%1_install.bat
echo echo ÿ >>%1_install.bat
echo %%1 >>%1_install.bat
echo cd \games >>%1_install.bat
echo echo To play Moebius, type >>%1_install.bat
echo echo 	cd \games >>%1_install.bat
echo echo Then type >>%1_install.bat
echo echo 	moebius >>%1_install.bat
%1_install %1
:VolBHere
rem	----	Everything has been copied -- tell the user how
rem	----	to start the game.
echo ÿ 
echo ÿ 
%1
cd \games
echo To play Moebius, type
echo 	cd \games
echo Then type
echo 	moebius
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
echo 	%1\games\moebius
echo Installation cancelled.
goto Exit
rem	----	No parameter or not on the proper drive -- tell user how
rem	----	to use installation program.
:Usage
echo off
echo To install Moebius on
echo hard disk C:, make the drive
echo containing the Moebius
echo disk your current drive, then type
echo		install  C:
echo	If your hard disk has a drive letter
echo other than C:, use its letter instead.
:Exit
