@echo off
if exist hl.dat ren hl.dat hl.exe
hl %1 %2 %3
ren hl.exe hl.dat
hlfile00 %1 %2 %3
