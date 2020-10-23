@echo off

:start
cls
echo.
echo You will now be asked to type in the directory to install this
echo product to.  Press enter for the default directory (C:\SIERRA\PQCOL)
echo otherwise, please type in the directory below.  Please note this
echo must be a drive letter and a directory.  Again, we highly recommend 
echo installing this product from Windows.
echo.
what s "Please enter install directory: " 
pushdir
if "%what%"=="" set what=c:\sierra\pqcol
set ddir=%what%
echo.
echo Please enter the letter of your INSTALL drive (example C).
what c "" abcdefghij
set ddr=%what%:
copy popdir.com %ddr%\
godir %ddir%
%ddr%\popdir

:createBatch
echo cd %ddir% > %ddir%\..\pq1.bat
echo Please enter the letter of your CD-ROM Drive (example D).
what c "" abcdefghij
echo %what%: >> %ddir%\..\pq1.bat
echo cd \pq1 >> %ddir%\..\pq1.bat
echo.
echo pq >> %ddir%\..\pq1.bat
echo cd \ >> %ddir%\..\pq1.bat
echo %ddr% >> %ddir%\..\pq1.bat
echo cd .. >> %ddir%\..\pq1.bat
echo.

:end

:endMsg
set ddir=
set ddr=
echo This completes the install process.  Thank you.  To run PQ1, enter
echo the directory above the install directory (i.e.  C:\SIERRA) and 
echo type PQ1.
echo.
pause

:endCont
set FLAG1=
echo.
