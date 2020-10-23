:01
cls
@echo off
:Menu 
echo    Worlock
echo.
echo.
Echo        Interactive Girls Menu
echo.      -------------------------      
echo.
echo    Press  1  Vida
echo           2  Teresa house guest
echo           3  Jo Guest Milkrun 
echo           4  Jo Guest Shaves 
echo           5  Erotic byte
echo           6  Foreplay 
echo           7  Camera Man
echo           8  to Quit 
echo. 
choice /C:123456789 /N .      Your Choice?      
if errorlevel= 9 goto end
if errorlevel= 8 goto end
if errorlevel= 7 camman
if errorlevel= 6 foreplay
if errorlevel= 5 eb
if errorlevel= 4 shave
if errorlevel= 3 jo
if errorlevel= 2 teresa
if errorlevel= 1 vida
goto 01
:end 
echo   Finish
