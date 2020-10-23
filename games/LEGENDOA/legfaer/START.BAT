@echo off
if exist install.exe goto install
vor %1 %2 %3 %4 %5 %6
lof %1 %2 %3 %4 %5 %6
goto ende
:install
install
:ende
