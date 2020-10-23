@echo off
whmdm
if errorlevel 2 wh2 serial %1 %2 %3 %4
if errorlevel 1 wh2 modem %1 %2 %3 %4

