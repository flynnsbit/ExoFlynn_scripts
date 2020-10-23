@echo off
rem show (the) map to elrond
rem show elrond (the) map

if "%1" == "the" show %2 %3 %4
if "%2" == "the" show %1 %3

if "%2" == "to" talkhelp %3 %1
talkhelp %1 %2
