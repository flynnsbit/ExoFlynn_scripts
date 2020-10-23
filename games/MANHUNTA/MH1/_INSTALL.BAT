copy *.* %dr%\sierra\%prog%
del %dr%\sierra\%prog%\installh.bat
copy %dr%\sierra\%prog%\_%prog%.bat %dr%\sierra\%prog%.bat
del %dr%\sierra\%prog%\_%prog%.bat
ren %dr%\sierra\%prog%\sierra.com %prog%.com

:GetVol2 
echo Please put disk 2 of %name% in the drive. 
pause 
%dr%\sierra\%prog%\resetdsk
if not exist %prog%vol.2 goto :GetVol2 

:Vol2Here 
copy *.* %dr%
if %disks% == 2 goto Done_Install

:GetVol3 
echo Please put disk 3 of %name% in the drive. 
pause 
%dr%\sierra\%prog%\resetdsk
if not exist %prog%vol.3 goto :GetVol3 

:Vol3Here 
copy *.* %dr%
if %disks% == 3 goto Done_Install

:GetVol4
echo Please put disk 4 of %name% in the drive. 
pause 
%dr%\sierra\%prog%\resetdsk
if not exist %prog%vol.4 goto :GetVol4

:Vol4Here 
copy *.* %dr%
if %disks% == 4 goto Done_Install

:GetVol5
echo Please put disk 5 of %name% in the drive. 
pause 
%dr%\sierra\%prog%\resetdsk
if not exist %prog%vol.5 goto :GetVol5

:Vol5Here 
copy *.* %dr%

:Done_Install
%1 
cd \sierra 
echo To play %name%, type 
echo 	cd \sierra 
echo Then type 
echo 	%prog%
set dr=
set prog=
set progid=
set name=
set disks=

