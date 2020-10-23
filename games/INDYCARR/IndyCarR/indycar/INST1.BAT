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
cd cars93
copy %1\indycar\cars\cars93
cd ..
cd ..

md effects
cd effects
copy %1\indycar\effects
cd ..

md tracks
cd tracks
md laguna
copy %1\indycar\tracks\laguna\*.* laguna
md longbch
copy %1\indycar\tracks\longbch\*.* longbch
md michigan
copy %1\indycar\tracks\michigan\*.* michigan
md mlwaukee
copy %1\indycar\tracks\mlwaukee\*.* mlwaukee
md nazareth
copy %1\indycar\tracks\nazareth\*.* nazareth
md nwenglnd
copy %1\indycar\tracks\nwenglnd\*.* nwenglnd
md portland
copy %1\indycar\tracks\portland\*.* portland
md toronto
copy %1\indycar\tracks\toronto\*.* toronto
md austral
copy %1\indycar\tracks\austral\*.* austral
md clevland
copy %1\indycar\tracks\clevland\*.* clevland
md detroit
copy %1\indycar\tracks\detroit\*.* detroit
md elkhart
copy %1\indycar\tracks\elkhart\*.* elkhart
md midohio
copy %1\indycar\tracks\midohio\*.* midohio
md phoenix
copy %1\indycar\tracks\phoenix\*.* phoenix
md vancouvr
copy %1\indycar\tracks\vancouvr\*.* vancouvr
cd ..

COPY %1\INDYCAR\CALENDAR
COPY %1\INDYCAR\*.AD?
COPY %1\INDYCAR\*.CFG
COPY %1\INDYCAR\*.DAT
COPY %1\INDYCAR\*.DLL
COPY %1\INDYCAR\README.TXT
COPY %1\INDYCAR\SETUP.EXE
COPY %1\INDYCAR\INDYCAR.EXE
COPY %1\INDYCAR\FAT.*
COPY %1\INDYCAR\CUTRPY.*
COPY %1\INDYCAR\SHOWSTG.*

echo NOCDROM >lib.cfg

:exit
