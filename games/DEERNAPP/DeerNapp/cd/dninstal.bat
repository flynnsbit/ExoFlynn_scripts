@echo off
set copycmd=/y
cls
echo ÿ
echo                 Welcome to DEER NAPPED!
echo             A shareware program created by
echo                Nic-Ty Entertainments
echo             Tyler Smith and Nick Fletcher
echo ÿ
echo This installation routine will copy the necessary files from
echo the directory where they were uploaded to a working directory on
echo your hard drive.
echo ÿ
echo A directory will be created on your system called C:\DEERNAPD
echo
echo A sub-directory  called C:\DEERNAPD\DATA will also be created
echo
echo After installation you may rename the DEERNAPD directory or move it
echo However the sub-directory relationship and the subdirectory DATA must
echo be maintained.
echo ÿ
echo To STOP the installation, press CTRL-C now
pause or enter any other key to continue
cls
echo Installing files......
md c:\deernapd >Nul
md c:\deernapd\data >Nul
for %%f in (data*.exe) do copy %%f c:\deernapd\data >nul
for %%f in (game*.exe) do copy %%f c:\deernapd >nul
for %%f in (dnstall2.bat) do copy %%f c:\deernapd >nul
copy registra.frm c:\deernapd
copy readme.1st c:\deernapd
If Exist C:\DeerNapd\dnstall2.Bat Goto GoodCopy
cls
echo An error has occured while copying one of the files from this
echo diskette. Please check your system setup and try again.
Goto Quit
:GoodCopy
for %%f in (data*.exe) do del %%f >nul
for %%f in (game*.exe) do del %%f >nul
del deernapd.zip
del registr.frm
del intro.txt
del readme.1st
del dnstall2.bat
cd\deernapd
dnstall2
:Quit
