@echo off
echo:
cd data
setup
if errorlevel == 73 goto ok
goto nok


:nok
echo 
echo Press any key to continue.
pause>NUL
goto ok


:ok
cd ..
