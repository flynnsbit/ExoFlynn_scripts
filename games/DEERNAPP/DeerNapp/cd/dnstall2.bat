@echo off
set copycmd=/y
cls
echo ÿ
echo Deer Napped installation - Continuing.....
echo ÿ
for %%f in (data*.exe) do copy %%f c:\deernapd\data >nul
for %%f in (game*.exe) do copy %%f c:\deernapd >nul
If Not Exist C:\DeerNapd\Game.Exe Goto BadCopy
If Not Exist C:\DeerNapd\Data\Data1.Exe Goto BadCopy
If Not Exist C:\DeerNapd\Data\Data2.Exe Goto BadCopy
If Not Exist C:\DeerNapd\Data\Data3.Exe Goto BadCopy
If Not Exist C:\DeerNapd\Data\Data4.Exe Goto BadCopy
Goto GoodCopy
:BadCopy
Cls
echo An error has occured while copying one of the files.
echo Please check your system setup and try again.
Goto Quit
:GoodCopy
cd\deernapd
echo Extracting compressed files......
if exist game.exe game
if exist game.exe del game.exe
cd \deernapd\data
for %%f in (data?.exe) do %%f
for %%f in (data?.exe) do del %%f
cls
echo Installation complete!
echo ÿ
echo To start the game, type RUNGAME from the C:\DEERNAPD directory
cd\deernapd
:Quit
