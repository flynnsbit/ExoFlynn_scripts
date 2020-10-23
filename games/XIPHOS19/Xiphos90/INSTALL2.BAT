
rem Xiphos Install2 Copyright (c) 1990 S.P.A./Electronic Zoo

:insterr1
cls
echo Insert Xiphos disk 2 and press any key...
%1:reply
if not exist cur1.exe goto insterr1
copy . %1:
md %1:xtext
copy xtext %1:xtext

if exist %1:gparams goto twodisk

:insterr2
cls
echo Insert Xiphos disk 3 and press any key...
%1:reply
if not exist gparams goto insterr2
copy . %1:

:twodisk
md %1:imgs
copy imgs %1:imgs

cls
echo Xiphos is now installed on drive %1:
