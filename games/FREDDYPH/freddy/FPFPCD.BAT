@echo off                                                        
                                                                
echo.                                                           
if exist D:\freddy\sierra.exe goto Done                         
echo Please put the Freddy Pharkas, Frontier Pharmacist CD      
echo into your CD-ROM.                                          
echo.                                                           
pause                                                           
                                                                
:LoopCheck                                                      
echo.                                                           
if exist D:\freddy\sierra.exe goto Done                         
echo Unable to detect the Freddy Pharkas, Frontier Pharmacist CD
echo in drive D:. You may abort this looping test by pressing  
echo Ctrl-C or insert the CD into your CD-ROM.                  
echo.                                                           
pause                                                           
goto LoopCheck                                                  
                                                                
:Done                                                           
cls                                                             
sierra                                                          
