@echo off
copyfilz %1 %2 %3 %4 %5 %6 %7 %8 %9
if errorlevel 1 goto badinst
if exist \fun.bat goto badinst
soundset
bbcheck
pause
cls
echo ÿTo play NOW:
echo ÿ   Type PLAYBALL and press [ENTER].
echo.
echo ÿTo play LATER:
echo ÿ   Type CD\SIERRA\BASEBALL and press [ENTER]
echo ÿ   then Type PLAYBALL and press [ENTER].
echo.
echo  Note: If you installed Baseball to a drive and/or
echo     directory other than the default, substitute the
echo     appropriate directory for the one specified above.
echo.
echo  If you should ever need to change your sound card selection 
echo  or settings, change to the game directory and run SOUNDSET.
goto end
:badinst
echo  You did not properly or completely install FPS: Baseball to 
echo  your hard drive.  If you did not intentionally exit the 
echo  install program, you should refer to the troubleshooting 
echo  section of your game manual and retry the install, or try 
echo  manually installing Baseball using the instructions found 
echo  in the MANBASE.TXT file in the \BASEBALL directory on the
echo  Baseball CD-ROM.
echo.
echo  If you continue to experience difficulties you may obtain 
echo  the assistance of a Sierra Technical Support Representative.  
echo  Refer to the Technical Support section of your game manual 
echo  for more information.
:end
