@echo off
cls
echo �
echo �
echo                          ** MINDPLAY **
echo         ***** Hard Disk Easy Street Installation *****
echo �
echo �
echo     A directory is being made using the name you entered, 
echo     and the program files are being moved to this directory.
echo     This process will take several minutes.
echo     When this process is complete you will be able to start 
echo     the program by typing PLAY.
echo �
echo     ***** Thank you for purchasing Mindplay software *****
echo �
if "%1"=="" goto errorfound
goto takeoff
:errorfound
echo �
echo �
echo You must specify a directory name in the following format:
echo �
echo          INSTALL [Directory Name]
echo �
echo �
goto quit
:takeoff
md c:\%1
copy *.* c:\%1 >nul
erase c:\%1\install.bat >nul
erase c:\%1\uninstal.bat >nul
c:
cd\%1
echo �
echo �
echo             **** Type PLAY to begin the game ****
echo �
:quit
