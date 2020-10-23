:menu
@echo off
cls
echo.
echo Press 1 for Extreme Tennis
echo Press 2 for Extreme Tennis 3DFX
echo Press 3 to Quit
echo.
echo Note: 3DFX Version performs poorly
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto 3dfx
if errorlevel = 1 goto soft

:soft
cycles max
copy .\soft\*.* .\
cls
@play
goto quit

:3dfx
set SST_GRXCLK=90 
set SST_FT_CLK_DEL=0x4 
set SST_TF0_CLK_DEL=0x6 
set SST_TF1_CLK_DEL=0x6 
set SST_VIN_CLKDEL=0x1 
set SST_VOUT_CLKDEL=0x0 
set SST_TMUMEM_SIZE=2
copy .\3dfx\*.* .\
cls
@play
goto quit

:quit
exit