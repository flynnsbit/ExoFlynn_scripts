IF EXIST %1\thegames\WINSTALL.BAT GOTO JUSTCOPY
echo off
cls
instmd.com %1

if ERRORLEVEL 10 goto SYN
if ERRORLEVEL 1  goto DFL
copy install.bat %1\thegames\winstall.bat
%comspec% /c%1\thegames\winstall %1
goto FF

:justcopy
echo Copying Disk B to %1\TheGames
copy HU*.* %1\TheGames > nul:
copy CY*.* %1\TheGames > nul:
copy IN*.* %1\TheGames > nul:
echo CD %1\TheGames > %1\TheGames.BAT
ECHO TheGames.EXE >> %1\TheGames.BAT

:DA
PAUSE Please Insert DISK A into current Drive.
IF NOT EXIST THEGAMES.EXE goto DA
echo Copying Disk A to %1\TheGames
copy TH*.* %1\TheGames > nul:
copy AW*.* %1\TheGames > nul:

:DC
PAUSE Please Insert DISK C into current Drive.
IF NOT EXIST RINGS. goto DC
echo Copying DISK C to %1\TheGames
copy RI*.* %1\TheGames > nul:
copy VA*.* %1\TheGames > nul:
copy HA*.* %1\TheGames > nul:

:DD
PAUSE Please Insert DISK D into current Drive.
IF NOT EXIST BARS. goto DD
echo Copying DISK D to %1\TheGames
copy BA*.* %1\TheGames > nul:
copy DI*.* %1\TheGames > nul:
copy AR*.* %1\TheGames > nul:

:EE
PAUSE Please Insert Disk B into current Drive.
echo off
IF NOT EXIST install.bat goto EE
goto done

:FF				    
del %1\thegames\winstall.bat
del %1\thegames\install.bat
del %1\thegames\instmd.com
%1
CD %1\TheGames
 

echo Installation of TheGames Summer Edition is Complete.
echo To experience TheGames Summer Edition type TheGames at the prompt.
goto Done

:SYN
Echo You must specify destination drive I.E. INSTALL C:\
Echo or You already have Thegames directory installed.
goto Done

:DFL
Echo You do not have enough space left on %1 to install TheGames.

:Done
