echo off
if exist a:A goto inst
echo lancer le programme d'installation a partir du disque A
goto fin
:inst
echo.
echo     installation de QUADREL sur disque dur
echo.
echo.
c:
cd\
md QUADREL
copy a:\*.* c:\QUADREL
:deb2
echo.
echo.
echo inserez la disquette B
pause
if exist a:B3 goto trois
if exist a:B5 goto fin2
goto deb2
:fin2
copy a:\*.* c:\QUADREL
:deb3
echo.
echo.
echo inserez la disquette C
pause
if exist a:C5 goto fin3
goto deb3
:fin3
copy a:\*.* c:\QUADREL
:deb4
echo.
echo.
echo inserez la disquette D
pause
if exist a:D5 goto fin4
goto deb4
:fin4
copy a:\*.* c:\QUADREL
goto fin
:trois
copy a:\*.* c:\QUADREL
:fin
echo.
echo.
echo fin d'installation sur disque dur

                                                                                                                                                                                                                                                                                                     