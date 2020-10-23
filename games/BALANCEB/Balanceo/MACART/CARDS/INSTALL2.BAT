echo off
:d1
echo: 
echo Insert Balance of the Planet DISK 2 into drive A.
pause
if not exist i:\cards2\*.* goto d1

cls
echo: 
echo: 
echo Installing Balance of the Planet -- disk 2.
copy i:\cards2 cards > nul

if exist i:\cards2\WTRSPPLY.crd goto done

echo: 
echo: 
echo: 
echo Disk 2 installation complete.
echo: 

:d3
echo: 
echo Insert Balance of the Planet DISK 3 into drive A.
pause
if not exist i:\cards3\*.* goto d3

cls
echo: 
echo: 
echo Installing Balance of the Planet -- disk 3.
copy i:\cards3 cards > nul

:done
echo: 
echo: 
echo: 
echo Installation is complete.
echo: 
echo: 
echo Type BP to run Balance of the Planet.
echo: 
echo: 

