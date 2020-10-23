@echo off
cls
echo.
echo Press 1 for Chess System Tal
echo Press 2 for Chess System Tal (White)
echo Press 3 for Chess System Tal (Black)
echo Press 4 for Chess System Tal (Paris-97)
echo Press 5 to Exit
echo.
choice /C:12345 /N Please Choose

if errorlevel = 5 goto exit
if errorlevel = 4 goto csp
if errorlevel = 3 goto csb
if errorlevel = 2 goto csw
if errorlevel = 1 goto cs

:cs
cls
@ChessR
goto exit

:csw
cls
@ChessW
goto exit

:csb
cls
@ChessB
goto exit

:csp
cls
@ChessP
goto exit

:exit