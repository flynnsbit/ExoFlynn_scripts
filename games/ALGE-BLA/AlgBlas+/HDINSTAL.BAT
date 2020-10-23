echo off
echo           *********************************************
echo           **                                         **
echo           **    Alge-Blaster Plus Install Program    **
echo           **                                         **
echo           *********************************************

:chkprog
if exist hd.exe goto doit
echo *************************************
echo ** Please insert your Program Disk **
echo *************************************
pause
goto chkprog

:doit
hd %1
if errorlevel 7 goto end
goto doit1
:end
echo   ********************************************
echo   *  Your hard disk installation has failed. *
echo   *  Please consult your manual.             *
echo   ********************************************
goto end2

:doit1
copy algebra.*  %1
copy editabp.*  %1

if exist three5. goto t5
echo
echo  ******************************************************
echo  *  Please insert Program Disk 2 into the same drive  *
echo  ******************************************************
echo
pause
goto res

:t5
copy three5.    %1

:res
copy *.rrs	%1
copy *.acc	%1
copy dmvid.*	%1
copy dmcsr.cfg	%1

echo
echo  *****************************************************
echo  *  Please insert the Data Disk into the same drive  *
echo  *****************************************************
echo
pause

copy *.clp 	%1
copy *.abd 	%1
copy *.txt 	%1
copy *.pic 	%1
copy *.abp	%1

echo   *****************************************************
echo   **  Your hard disk installation is complete.       **
echo   *****************************************************

:end2
