@echo off
whmdm
if errorlevel 2 wh serial %1 %2 %3 %4
if errorlevel 1 wh modem %1 %2 %3 %4

