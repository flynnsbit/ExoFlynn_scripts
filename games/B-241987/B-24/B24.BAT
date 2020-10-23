echo off
cls
rem screen mode setup
if "%1" == "xm" mode 80,e
if "%1" == "XM" mode 80,e
rem doing halo load
HALORTP
rem loading B24
B24MAIN
rem screen mode restore
if "%1" == "xm" mode 80,i
if "%1" == "XM" mode 80,i
cls