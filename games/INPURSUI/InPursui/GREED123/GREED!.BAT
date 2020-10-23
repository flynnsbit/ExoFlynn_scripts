@echo off
:top
docshell menu.shl %1 %2 %3 %4 %5 %6 %7 %8 %9
if errorlevel 5 goto run4
if errorlevel 4 goto run3
if errorlevel 3 goto run2
if errorlevel 1 goto run1
goto exit

:run1
 if not exist greed.exe goto err1
 setup.exe
 goto top

:err1 
 echo You have not installed In Pursuit of Greed!
 echo .
 echo You must install one of the three missions
 echo  to access the multi-player modes!
 echo .
 pause
 goto top

:run3
 if not exist greed2.exe goto err3
 call greed2!.bat
 goto top

:err3
 echo You have not installed In Pursuit of Greed, Part 2:
 echo           The City Temple of Ristanak.
 echo .
 pause
 goto top

:run2
 if not exist greed1.exe goto err2
 call greed1!.bat
 goto top

:err2
 echo You have not installed in Pursuit of Greed, Part 1:
 echo            The Desarian Penal Colony.
 echo .
 pause
 goto top


:run4
 if not exist greed3.exe goto err4
 call greed3!.bat
 goto top

:err4
 echo You have not installed in Pursuit of Greed, Part 3:
 echo                Mt. Kaal Jump Base.
 echo .
 pause
 goto top

:exit
bs
