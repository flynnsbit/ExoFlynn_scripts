echo off
echo           *********************************************
echo           **                                         **
echo           **     Alge-Blaster Plus Remove Program    **
echo           **                                         **
echo           *********************************************
if exist uhd.exe goto doit
:chkprog
echo *************************************
echo ** Please insert your Program Disk **
echo *************************************
goto chkprog

:doit
uhd %1
if errorlevel 7 goto end
goto doit1
:end

echo           ******************************************
echo           *   Your hard disk program removal has   *
echo           *   failed. Please consult your manual.  *
echo           ******************************************
goto end2

:doit1
erase %1\abp*.abd
erase %1\tutor*.abd
erase %1\*.txt
erase %1\*.clp
erase %1\*.pic
erase %1\glossary.abp
erase %1\algebra.*
erase %1\editabp.*
if exist %1\dmcsr.rrs goto dm
goto cont
:dm
erase %1\*.rrs
erase %1\*.acc
erase %1\dmvid.*
erase %1\*.cfg
:cont
if exist %1\three5. goto three
goto done
:three
erase %1\three5.
:done
cd %1\..
rmdir %1
echo           ***********************************************
echo           **       Alge-Blaster Plus has been          **
echo           ** successfully removed from your hard disk. **
echo           ***********************************************

:end2
