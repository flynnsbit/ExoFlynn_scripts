@echo off
cls
echo ÿ
echo ÿ
echo                          ** MINDPLAY **
echo         ***** Hard Disk Easy Street Installation *****
echo ÿ
echo ÿ
echo     A directory is being made using the name you entered, 
echo     and the program files are being moved to this directory.
echo     This process will take several minutes.
echo     When this process is complete you will be able to start 
echo     the program by typing PLAY.
echo ÿ
echo     ***** Thank you for purchasing Mindplay software *****
echo ÿ
if "%1"=="" goto errorfound
goto takeoff
:errorfound
echo ÿ
echo ÿ
echo You must specify a directory name in the following format:
echo ÿ
echo          INSTALL [Directory Name]
echo ÿ
echo ÿ
goto quit
:takeoff
md c:\%1
copy *.* c:\%1 >nul
erase c:\%1\install.bat >nul
erase c:\%1\uninstal.bat >nul
c:
cd\%1
echo ÿ
echo ÿ
echo             **** Type PLAY to begin the game ****
echo ÿ
:quit
