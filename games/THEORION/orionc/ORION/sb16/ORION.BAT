@echo off
if exist update.bat call update
call cer_midi
call cer_digi
if exist english.exe goto run
echo.
echo Language not available.
echo.
goto end
:run
english %1 %2 %3 %4 %5 %6 %7 %8
:end
