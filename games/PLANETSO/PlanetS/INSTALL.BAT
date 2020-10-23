@echo off

echo ***************************************************************
echo *** This Batch Install Program from CD-ROM to you Hard Disk ***
echo *** For Install Type: INSTALL [drive name:]                 ***
echo ***************************************************************
 
if -%1==- goto no_par
mkdir %1\planfoot
xcopy *.* %1\planfoot\ /s /e
attrib -R /S %1\planfoot\*.*
%1
cd %1\planfoot
setup.exe
echo *******************************
echo *** To Run Game Type GO.BAT ***
echo *******************************
goto exit

:no_par
echo *** Error! Type INSTALL and Drive Name ***
echo on

:exit
