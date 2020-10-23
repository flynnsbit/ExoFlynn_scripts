@echo off

if %TEMP%!==! goto notemp1
echo Toonstruck Running>%TEMP%\TOONSTRK.LCK
goto start
:notemp1
if %TMP%!==! goto notmp1
echo Toonstruck Running>%TMP%\TOONSTRK.LCK
goto start
:notmp1
echo Toonstruck Running>C:\TOONSTRK.LCK

:start
main toon %1 %2 %3 %4 %5

if %TEMP%!==! goto notemp2
if exist %TEMP%\TOONSTRK.LCK del %TEMP%\TOONSTRK.LCK
goto end
:notemp2
if %TMP%!==! goto notmp2
if exist %TMP%\TOONSTRK.LCK del %TMP%\TOONSTRK.LCK
goto end
:notmp2
if exist C:\TOONSTRK.LCK del C:\TOONSTRK.LCK

:end
