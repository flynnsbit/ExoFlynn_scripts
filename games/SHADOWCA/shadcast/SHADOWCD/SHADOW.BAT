@echo off
set dos4g=quiet
cls
D:\CHECKMEM
if not errorlevel 5 goto check2
 
echo -------------------------------------------------
echo  Warning!  You may not have enough conventional
echo  memory free to play Shadowcaster.  We strongly
echo recommend you free up more memory before playing.
echo -------------------------------------------------
echo   (Press ENTER to continue, or CTRL-C to quit)
echo -------------------------------------------------
 
pause
 
:check2
DOS4GW D:\CHECKHI
if not errorlevel 5 goto play
 
echo -------------------------------------------------
echo  Warning!  You may not have enough upper memory
echo free to play Shadowcaster.  We strongly recommend
echo      you free up more memory before playing.
echo -------------------------------------------------
echo   (Press ENTER to continue, or CTRL-C to quit)
echo -------------------------------------------------
  
pause
 
:play
DOS4GW.EXE ADPLAY
:restart
DOS4GW.EXE RAVEN
if exist apdf goto extra
if exist 42 DOS4GW.EXE ADPLAY end.dat
goto exit
 
:extra
DOS4GW.EXE ADPLAY read
DOS4GW.EXE RAVEN restart
if exist apdf goto extra
if exist 42 DOS4GW.EXE ADPLAY end.dat
:exit
