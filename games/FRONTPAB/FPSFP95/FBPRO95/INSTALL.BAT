@echo off
copyfilz %1 %2 %3 %4 %5 %6 %7 %8 %9
if errorlevel 1 goto badinst
if exist \fun.bat goto badinst
soundset
rem The next line calls FBCHECK.
fbcheck
pause
cls
echo ÿTo play NOW:
echo ÿ   Type HIKE and press [ENTER].
echo.
echo ÿTo play LATER:
echo ÿ   Type CD\SIERRA\FBPRO95 and press [ENTER]
echo ÿ   then Type HIKE and press [ENTER].
echo.
echo  Note: If you installed Football Pro '95 to a drive and/or
echo     directory other than the default, substitute the
echo     appropriate directory for the one specified above.
echo.
echo  If you should ever need to change your sound card selection 
echo  or settings, change to the game directory and run SOUNDSET.
goto end
:badinst
echo  You did not properly or completely install FPS: Football
echo  Pro '95 to your hard drive.  If you did not intentionally
echo  exit the install program, you should refer to the trouble-
echo  shooting section of your game manual and retry the install,
echo  or try manually installing Football Pro '95 using the
echo  instructions found in the MANFB95.TXT file in the \FBPRO95
echo  directory on the Football Pro '95 CD-ROM.
echo.
echo  If you continue to experience difficulties you may obtain 
echo  the assistance of a Sierra Technical Support Representative.  
echo  Refer to the Technical Support section of your game manual 
echo  for more information.
:end
