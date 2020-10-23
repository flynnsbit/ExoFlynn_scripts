@echo off
@cd \game
@gameini.exe
if errorlevel == 18 goto max8
if errorlevel == 17 goto max7
if errorlevel == 16 goto max6
if errorlevel == 15 goto max5
if errorlevel == 14 goto max4
if errorlevel == 13 goto max3
if errorlevel == 12 goto max2
if errorlevel == 11 goto max1
@echo on
goto end

:max8
max.exe 8
goto end
:max7
max.exe 7
goto end
:max6
max.exe 6
goto end
:max5
max.exe 5
goto end
:max4
max.exe 4
goto end
:max3
max.exe 3
goto end
:max2
max.exe 2
goto end
:max1
max.exe 1
goto end
:end
@cd \
@echo on
@exit
