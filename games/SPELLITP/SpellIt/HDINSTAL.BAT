echo off
echo           **********************************************
echo           **                                          **
echo           **      Spell It Plus Install Program       **
echo           **                                          **
echo           **********************************************

:first
if exist go.com goto doit
echo           ***************************************************
echo           *   Please insert the program disk into the drive *
echo           ***************************************************
pause
goto first
:doit     
md %1
copy three5        %1
copy *.dat         %1
copy *.com         %1
copy setup.bat     %1
copy print.exe     %1
copy printkil.com  %1
copy setupds.exe   %1
copy spell.bat     %1
copy speechds.exe  %1
copy setspch.exe   %1
copy mtk*.*    	   %1
copy *.obj         %1
copy *.ovl         %1  
copy remove.*	   %1
md                 %1\cga
copy cga\*.*       %1\cga
md                 %1\ega
copy ega\*.*       %1\ega
md                 %1\data
copy data\*.*      %1\data
md                 %1\junior
copy junior\*.*    %1\junior

:second
echo   **************************************************
echo   *   Please insert the speech disk into the drive *
echo   **************************************************
pause
if not exist sv3-pwm.exe goto second
copy *.exe         %1
copy *.drv         %1

echo   *************************************
echo   **  Your installation is complete. **
echo   *************************************
:theend



