cls
@echo                               PASSWORD SELECTION
@echo  This game is an incredibly intense experience intended for mature audiences.    We strongly suggest that you do not play this game if you are under 17. The     terrifying images found here may be too much for more sensitive players. If     you wish to tone down what you will see, choose the "Less Intense" version      when you start the game. If you wish to see the full and uncut version of       "A Puzzle of Flesh," choose the "More Intense" version
@echo                   Be warned - you do so at your own risk!   
@echo  If you wish to do so, you may set a password below. This will prevent the       game from being started in the "More Intense" mode without the password. If     you do not enter a password, the game will always play in the "More Intense"    mode. 
:getpass
@echo  Enter the password you wish to use, (maximum 15 characters) or just press       ENTER for none 
@echo off
what S -=>
if not ERRORLEVEL 16 goto setpass
@echo  The password you have entered is too long. Please choose a shorter one.
@echo.
goto getpass
:setpass
if not ERRORLEVEL 1 goto nopass
@echo %what% > resduk.pat
goto end
:nopass
if exist resduk.pat del resduk.pat
:end
cls
SIERRA.EXE
