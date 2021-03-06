echo off
cls
echo 様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo ���Install program for VGA Civil War Strategy v1.4
echo 様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo �

if "%1" == "" goto howto

if exist cws.exe goto proceed
if not exist cws.exe goto howto

:proceed
if not exist install.bat goto howto

echo �
echo Civil War installation
echo This will create a directory called \CWSTRAT on the '%1' disk
echo and copy the game files into it.
echo �
echo Hit Ctrl-C if you do NOT wish to continue

pause

echo Creating directory '\CWSTRAT' on '%1' drive
mkdir %1\CWSTRAT

echo �
echo Copying files
copy *.* %1\CWSTRAT
cls
echo Changing to CWSTRAT Directory...
%1
cd\cwstrat
echo �
echo Civil War Strategy is now installed !
echo To play the game type:
echo CWS
echo (On-line help is available from the game)
echo .....................................................
echo To see the online help, type:
echo CWSDOC
echo .....................................................
echo You may then print the complete documentation
echo from the file CWS.DOC
goto done4

:howto
echo Place Master Disk in drive and go to that drive and type
echo "INSTALL DRIVE:" where DRIVE: is the TARGET drive.
echo �
echo EXAMPLE:
echo To copy the game from the A: drive to the C: drive,
echo you would type
echo            A:          [enter]
echo            INSTALL C:  [enter]
echo If your target disk is a drive other than C: use its letter instead.

:done4
