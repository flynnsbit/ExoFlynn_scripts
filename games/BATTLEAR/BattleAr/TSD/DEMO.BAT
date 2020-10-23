@echo off
cls
:start
echo;
echo                 Welcome to Playmates Interactive Entertainment
echo                             PC CD-ROM Sampler Disc
echo;
echo                       1) Powerslave
echo                       2) Into the Void
echo                       3) Earthworm Jim 1 & 2
echo;
echo;
choice /c:1234 Enter a # to install 
if ERRORLEVEL 3 goto ewjpc
if ERRORLEVEL 2 goto itv
if ERRORLEVEL 1 goto ps

:ewjpc
cd ewjdemo
install
goto stop

:itv
cd itvdemo
install
goto stop

:ps
cd psfree
install
goto stop

:stop
end


