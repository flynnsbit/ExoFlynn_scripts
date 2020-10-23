echo off
memtest
if errorlevel 1 goto :end
intro
map
goto :end2
:end
echo on
rem Headline Harry will not run due to low available memory.
:end2
