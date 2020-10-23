echo off
cls
echo Faery Tale Adventure  EGA  Hard Disk Installation.
if "%1"=="" goto invalid
if "%1"==":" goto invalid
if "%1"=="A:" goto invalid
if "%1"=="B:" goto invalid

:disk1
echo Please insert disk A into drive A.
pause
if not exist a:fte.exe goto disk1
copy a:fte.exe			%1
copy a:creditse.msc		%1
copy a:music			%1
copy a:page0e.msc		%1
copy a:page1e.msc		%1
copy a:page2e.msc		%1
copy a:page3e.msc		%1

:disk2
echo Please insert disk C into drive A.
pause
if not exist a:astrale.mtd goto disk2
copy a:f6a				%1
copy a:f9a.msh			%1
copy a:map1				%1

copy a:astrale.mtd		%1
copy a:builde.mtd		%1
copy a:castlee.mtd		%1
copy a:cavee.mtd		%1
copy a:doome.mtd		%1
copy a:fielde.mtd		%1
copy a:furnishe.mtd		%1
copy a:insidee.mtd		%1
copy a:mount1e.mtd		%1
copy a:mount2e.mtd		%1
copy a:mountaie.mtd		%1
copy a:palacee.mtd		%1
copy a:rocke.mtd		%1
copy a:swampe.mtd		%1
copy a:towere.mtd		%1
copy a:undere.mtd		%1
copy a:wilde.mtd		%1

copy a:bartende.msd		%1
copy a:beggare.msd		%1
copy a:birde.msd		%1
copy a:carriere.msd		%1
copy a:dknighte.msd		%1
copy a:dragone.msd		%1
copy a:ghoste.msd		%1
copy a:juliane.msd		%1
copy a:kevine.msd		%1
copy a:objectse.msd		%1
copy a:ogree.msd		%1
copy a:phillipe.msd		%1
copy a:royale.msd		%1
copy a:spirite.msd		%1
copy a:turtlee.msd		%1
copy a:witche.msd		%1
copy a:wizarde.msd		%1

copy a:bowe.sd			%1
copy a:compasse.sd		%1
copy a:evile.msh		%1
copy a:iteme.sd			%1
copy a:newmaske.msh		%1
copy a:scrolle.sd		%1
copy a:terrae			%1
copy a:winpice.msc		%1
goto end
:invalid
echo The destination Hard Drive (C or D) is expected to be the default drive.
echo Change to the destination Hard Drive, then type A:FTEINSTL
:end
echo on
