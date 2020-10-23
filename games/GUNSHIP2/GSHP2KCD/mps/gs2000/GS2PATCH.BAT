@echo off
cls
echo * This is a  patch for Gunship 2000  Ver.02 that enables a second joystick *
echo * to vary the  collective control  proportional to the  joystick's up/down *
echo * position, and works best with the Y-axis self-centering disabled.        *
echo *                                                                          *
echo * RUN this batch  file only after  running SETUP  and configuring  for two *
echo * joysticks.                                                               *
echo *                                                                          *
echo * Press [Ctrl-C] to terminate batch file.                                  *
echo.
pause
debug setup.dat <gs2.dbg
cls
echo * Patch complete. Type GS2000 to play.
echo * NOTE: Re-running SETUP null & voids this patch.
