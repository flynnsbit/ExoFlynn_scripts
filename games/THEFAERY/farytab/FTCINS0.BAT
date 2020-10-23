echo off
cls
echo Faery Tale Adventure  CGA  Hard Disk Installation.
if "%1"=="" goto invalid
if "%1"==":" goto invalid
if "%1"=="A:" goto invalid
if "%1"=="B:" goto invalid

:disk1
echo Please insert disk A into drive A.
pause
if not exist a:ftc.exe goto disk1
copy a:ftc.exe				%1
copy a:page0c.msc			%1
copy a:page1c.msc			%1
copy a:page2c.msc			%1
copy a:page3c.msc			%1
copy a:creditsc.msc			%1
copy a:music				%1

:disk2
echo Please insert disk B into drive A.
pause
if not exist a:astralc.mtd goto disk2
copy a:f6a				%1
copy a:f9a.msh			%1
copy a:map1				%1

copy a:astralc.mtd		%1
copy a:buildc.mtd		%1
copy a:castlec.mtd		%1
copy a:cavec.mtd		%1
copy a:doomc.mtd		%1
copy a:fieldc.mtd		%1
copy a:furnishc.mtd		%1
copy a:insidec.mtd		%1
copy a:mount1c.mtd		%1
copy a:mount2c.mtd		%1
copy a:mountaic.mtd		%1
copy a:palacec.mtd		%1
copy a:rockc.mtd		%1
copy a:swampc.mtd		%1
copy a:towerc.mtd		%1
copy a:underc.mtd		%1
copy a:wildc.mtd		%1

copy a:bartendc.mco		%1
copy a:bartendc.msh		%1
copy a:beggarc.mco		%1
copy a:beggarc.msh		%1
copy a:birdc.mco		%1
copy a:birdc.msh		%1
copy a:carrierc.mco		%1
copy a:carrierc.msh		%1
copy a:dknightc.mco		%1
copy a:dknightc.msh		%1
copy a:dragonc.mco		%1
copy a:dragonc.msh		%1
copy a:ghostc.mco		%1
copy a:ghostc.msh		%1
copy a:julianc.mco		%1
copy a:julianc.msh		%1
copy a:kevinc.mco		%1
copy a:kevinc.msh		%1
copy a:objectsc.mco		%1
copy a:objectsc.msh		%1
copy a:ogrec.mco		%1
copy a:ogrec.msh		%1
copy a:phillipc.mco		%1
copy a:phillipc.msh		%1
copy a:royalc.mco		%1
copy a:royalc.msh		%1
copy a:spiritc.mco		%1
copy a:spiritc.msh		%1
copy a:turtlec.mco		%1
copy a:turtlec.msh		%1
copy a:witchc.mco		%1
copy a:witchc.msh		%1
copy a:wizardc.mco		%1
copy a:wizardc.msh		%1

copy a:compassc.sd		%1
copy a:cursorc.sd		%1
copy a:evilc.msh		%1
copy a:itemc.sd			%1
copy a:maskmemc			%1
copy a:terrac			%1
copy a:scrollc.sd		%1
copy a:winpicc.msc		%1
goto end
:invalid
echo The destination Hard Drive (C or D) is expected to be the default drive.
echo Change to the destination Hard Drive, then type A:FTCINSTL
:end
echo on
