@echo off
rem *************************************************
rem **Setup   DEMO    version of Back to Baghdad  ***
rem **Copyright (C) 1996 Military Simulations Inc ***
rem *************************************************
set DOS4G=quiet
set B2BSETUPTEMP=%DOS4GVM%
set DOS4GVM=
call donotrun.exe 
call MSIPATCH.BAT
pause
type readme.txt | more
del MSIPATCH.bat
set DOS4GVM=%B2BSETUPTEMP%
set B2BSETUPTEMP=
