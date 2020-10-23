@echo off
if exist em.dat ren em.dat em.exe
em %1 %2 %3
ren em.exe em.dat
emfile00 %1 %2 %3
