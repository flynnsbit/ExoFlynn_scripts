@ECHO OFF
IF exist eos1.exe goto dc
cd \eos
:dc
esd1 %1 %2 %3 %4 %5
eos1 %1 %2 %3 %4 %5
cd \
