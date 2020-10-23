@echo off
if exist ro.dat ren ro.dat ro.exe
ro %1 %2 %3
ren ro.exe ro.dat
rofile00 %1 %2 %3
