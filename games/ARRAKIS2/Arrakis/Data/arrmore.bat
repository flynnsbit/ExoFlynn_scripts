@echo off
echo Extra missions. Thanks for downloading...
echo.
rename arrakis.lvl arrakis.lv1
rename arrakis.mre arrakis.lvl
arrakis.exe /m
echo Restoring map data file
rename arrakis.lvl arrakis.mre
rename arrakis.lv1 arrakis.lvl
