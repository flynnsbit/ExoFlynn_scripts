@echo off
if %3 == install goto install
echo If you wish to install IndyCar Racing into your system,
echo please run the INSTALL.EXE program.
goto exit

rem   usage:  inst  from_drive to_drive install
rem example:  inst  d: c: install

:install

%2
md cars
cd cars
md cars93
cd ..

md effects

md tracks
cd tracks
md laguna
copy %1\indycar\tracks\laguna\*.ST? laguna
md longbch
copy %1\indycar\tracks\longbch\*.ST? longbch
md michigan
copy %1\indycar\tracks\michigan\*.ST? michigan
md mlwaukee
copy %1\indycar\tracks\mlwaukee\*.ST? mlwaukee
md nazareth
copy %1\indycar\tracks\nazareth\*.ST? nazareth
md nwenglnd
copy %1\indycar\tracks\nwenglnd\*.ST? nwenglnd
md portland
copy %1\indycar\tracks\portland\*.ST? portland
md toronto
copy %1\indycar\tracks\toronto\*.ST? toronto
md austral
copy %1\indycar\tracks\austral\*.ST? austral
md clevland
copy %1\indycar\tracks\clevland\*.ST? clevland
md detroit
copy %1\indycar\tracks\detroit\*.ST? detroit
md elkhart
copy %1\indycar\tracks\elkhart\*.ST? elkhart
md midohio
copy %1\indycar\tracks\midohio\*.ST? midohio
md phoenix
copy %1\indycar\tracks\phoenix\*.ST? phoenix
md vancouvr
copy %1\indycar\tracks\vancouvr\*.ST? vancouvr
cd ..

copy %1\indycar\indycar.exe
copy %1\indycar\setup.exe
copy %1\indycar\*.cfg
copy %1\indycar\readme.txt
copy %1\indycar\cutrpy.*
copy %1\indycar\showstg.*
echo %1\indycar > lib.cfg

:exit
