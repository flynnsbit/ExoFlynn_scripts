@echo off                
copy main.bat x.swp > nul
copy main.bat x.tmp > nul
erase main.bat           
erase *.swp              
erase *.tmp              
