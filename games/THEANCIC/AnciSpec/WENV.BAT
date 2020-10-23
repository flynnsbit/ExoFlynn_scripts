@echo off
cls
echo.
echo Now you can safely play the game. Don't bother about error messages 'Out of
echo enviroment space' or corrupt prompt if it happened. The game will work anyway.
echo When you finish, type 'exit' to restore your original enviroment settings.
echo.
set ~=%PROMPT%
prompt Now type game name or exit by 'exit': 
%COMSPEC% /e:32768
prompt %~%
set ~=