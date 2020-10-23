echo off
mode con: rate=1 delay=4
INTRO D:\INTRO\SPLITTER.RDV
splitter.exe
mode con: rate=32 delay=1
echo on
