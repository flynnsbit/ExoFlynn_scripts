echo off
echo ÿ
echo ÿ
rem	----	Make sure that we've got a parameter and that we're on the
rem	----	proper drive.
if "%1" == "" goto Usage
if not exist install.bat goto Usage
rem	----	Wait for a keystroke before starting.
echo off
echo Hard disk installation for Windwalker
pause
rem	----	Create or change to the appropriate directory on the hard disk.
setpath %1\wind
if errorlevel 1 goto CantMake
cd %1\wind
rem	----	Copy the files from disk A.
echo cd \wind >%1\wind.bat
echo wind %%1 %%2 %%3 %%4 %%5 >>%1\wind.bat
copy wind.exe %1\wind\wind.exe
copy *.ovl %1
copy *.tlb %1
copy *.slb %1
copy *.def %1
copy *.glb %1
rem	----	If disk.B is not on this disk, prompt for disk B.
echo ÿ 
if exist combat.ovl goto :VolBHere
rem	----	Copy the installation file to the hard disk and execute it.
echo :GetVolB >%1_install.bat
echo echo Please put Disk B in the drive. >>%1_install.bat
echo pause >>%1_install.bat
echo if not exist combat.ovl goto :GetVolB >>%1_install.bat
echo copy *.ovl %%1 >>%1_install.bat
echo copy *.dat %%1 >>%1_install.bat
echo copy *.tlb %%1 >>%1_install.bat
echo copy *.glb %%1 >>%1_install.bat
echo if exist wind.ovl goto :HaveVolC >>%1_install.bat
goto :contC
:JustNeedC
echo rem - Copy Disk C >%1_install.bat
:contC
echo :GetVolC >>%1_install.bat
echo echo Please put Disk C in the drive. >>%1_install.bat
echo pause >>%1_install.bat
echo if not exist wind.ovl goto :GetVolC >>%1_install.bat
echo copy *.ovl %%1 >>%1_install.bat
echo copy *.dat %%1 >>%1_install.bat
echo copy *.tlb %%1 >>%1_install.bat
echo copy *.glb %%1 >>%1_install.bat
echo :HaveVolC >>%1_install.bat
echo copy *.btx %%1 >>%1_install.bat
echo echo ÿ >>%1_install.bat
echo echo ÿ >>%1_install.bat
echo %%1 >>%1_install.bat
echo cd \wind >>%1_install.bat
echo echo To play Windwalker, type >>%1_install.bat
echo echo 	cd \wind >>%1_install.bat
echo echo Then type >>%1_install.bat
echo echo 	wind >>%1_install.bat
%1_install %1
:VolBHere
copy *.dat %1
copy *.glb %1
rem	----	If disk.C is not on this disk, prompt for disk C.
echo ÿ 
if not exist wind.ovl goto :JustNeedC
copy *.btx %1
rem	----	Everything has been copied -- tell the user how
rem	----	to start the game.
echo ÿ 
echo ÿ 
%1
cd \wind
echo To play Windwalker, type
echo 	cd \wind
echo Then type
echo 	wind
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
echo 	%1\wind
echo Installation cancelled.
goto Exit
rem	----	No parameter or not on the proper drive -- tell user how
rem	----	to use installation program.
:Usage
echo off
echo To install Windwalker on
echo hard disk C:, make the drive
echo containing the Windwalker
echo disk your current drive, then type
echo		install  C:
echo	If your hard disk has a drive letter
echo other than C:, use its letter instead.
:Exit
