@ECHO OFF
cls
echo.
echo 1  Install all files to C:\DUKE   
echo 2  Install all files to D:\DUKE
echo 3  Install all files to E:\DUKE   
echo 4  Install all files to F:\DUKE
echo 5  Install all files to G:\DUKE   
echo 6  Quit Installation and Return to Dos.
echo.
choice /c:123456 /T:6,35 Choose

if errorlevel 6 goto SIX
if errorlevel 5 goto FIVE
if errorlevel 4 goto FOUR
if errorlevel 3 goto THREE
if errorlevel 2 goto TWO
if errorlevel 1 goto ONE

:ONE
@ECHO OFF
MD C:\DUKE
XCOPY *.* /s C:\DUKE 
C:
CD\DUKE
echo.
echo.
Echo *****************************
Echo *                           *
Echo *  Installation Completed!  *
Echo *    Type DUKE to Play.     *
Echo *                           *
Echo *****************************
Echo.
echo.
goto end

rem *************************************************************************
:TWO
@ECHO OFF
MD D:\DUKE
XCOPY *.* /s D:\DUKE 
D:
CD\DUKE
echo.
echo.
Echo *****************************
Echo *                           *
Echo *  Installation Completed!  *
Echo *    Type DUKE to Play.     *
Echo *                           *
Echo *****************************
Echo.
echo.
goto end

rem *************************************************************************
:THREE
@ECHO OFF
MD E:\DUKE
XCOPY *.* /s E:\DUKE 
E:
CD\DUKE
echo.
echo.
Echo *****************************
Echo *                           *
Echo *  Installation Completed!  *
Echo *    Type DUKE to Play.     *
Echo *                           *
Echo *****************************
Echo.
echo.
goto end

rem *************************************************************************
:FOUR
@ECHO OFF
MD F:\DUKE
XCOPY *.* /s F:\DUKE 
F:
CD\DUKE
echo.
echo.
Echo *****************************
Echo *                           *
Echo *  Installation Completed!  *
Echo *    Type DUKE to Play.     *
Echo *                           *
Echo *****************************
Echo.
echo.
goto end

rem *************************************************************************
:FIVE
@ECHO OFF
MD G:\DUKE
XCOPY *.* /s G:\DUKE 
G:
CD\DUKE
echo.
echo.
Echo *****************************
Echo *                           *
Echo *  Installation Completed!  *
Echo *    Type DUKE to Play.     *
Echo *                           *
Echo *****************************
Echo.
echo.
goto end

rem *************************************************************************

:SIX
@ECHO OFF
goto end

:end
