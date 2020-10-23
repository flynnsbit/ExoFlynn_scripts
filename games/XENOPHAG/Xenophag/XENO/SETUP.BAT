@ECHO OFF
IF EXIST XPR.BAT GOTO REG
IF EXIST XPS.BAT GOTO SHARE
ECHO Couldn't find XPS.BAT or XPR.BAT!
GOTO DONE

:SHARE
XPSX.EXE /VALID /SETUP %1 %2 %3 %4 %5 %6 %7 %8 %9
IF ERRORLEVEL 43 GOTO DONE
IF ERRORLEVEL 42 GOTO SAGAIN
GOTO DONE
:SAGAIN
XPS.BAT %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO DONE

:REG
XPRX.EXE /VALID /SETUP %1 %2 %3 %4 %5 %6 %7 %8 %9
IF ERRORLEVEL 43 GOTO DONE
IF ERRORLEVEL 42 GOTO RAGAIN
GOTO DONE
:RAGAIN
echo.
echo To reconfigure Xenophage, enter SETUP in your game directory.
echo.
echo To play Xenophage, enter XPR in your game directory.
echo (The game will be automatically run for you now.)
echo.
pause
XPR.BAT %1 %2 %3 %4 %5 %6 %7 %8 %9

:DONE
echo  To reconfigure Xenophage, enter SETUP in your game directory.
echo.
echo  To play Xenophage, enter XPR in your game directory.
echo.
