@echo off
if "%1"=="A" goto cont
if "%1"=="a" goto cont
if "%1"=="B" goto cont
if "%1"=="b" goto cont
goto err
:cont
if "%2"=="C" goto next
if "%2"=="c" goto next
if "%2"=="D" goto next
if "%2"=="d" goto next
if "%2"=="E" goto next
if "%2"=="e" goto next
if "%2"=="F" goto next
if "%2"=="f" goto next
if "%2"=="G" goto next
if "%2"=="g" goto next
if "%2"=="H" goto next
if "%2"=="h" goto next
if "%2"=="I" goto next
if "%2"=="i" goto next
if "%2"=="J" goto next
if "%2"=="j" goto next
if "%2"=="K" goto next
if "%2"=="k" goto next
if "%2"=="L" goto next
if "%2"=="l" goto next
if "%2"=="M" goto next
if "%2"=="m" goto next
if "%2"=="N" goto next
if "%2"=="n" goto next
if "%2"=="O" goto next
if "%2"=="o" goto next
if "%2"=="P" goto next
if "%2"=="p" goto next
if "%2"=="Q" goto next
if "%2"=="q" goto next
if "%2"=="R" goto next
if "%2"=="r" goto next
if "%2"=="S" goto next
if "%2"=="s" goto next
if "%2"=="T" goto next
if "%2"=="t" goto next
if "%2"=="U" goto next
if "%2"=="u" goto next
if "%2"=="V" goto next
if "%2"=="v" goto next
if "%2"=="W" goto next
if "%2"=="w" goto next
if "%2"=="X" goto next
if "%2"=="x" goto next
if "%2"=="Y" goto next
if "%2"=="y" goto next
if "%2"=="Z" goto next
if "%2"=="z" goto next
:err
echo.
echo The INSTALL commmand must be followed by the letters for your source and
echo destination drive. For example, INSTALL A C will install from floppy drive
echo A to hard drive C. Please try again.
echo.
goto end
:next
%2:
cd\
mkdir bert3
%1:
bdcomp %2:\bert3
%2:
cd\bert3
echo.
echo If you wish to print the manual type COPY BD30.DOC PRN
echo.
echo To run the Bert's Dinosaurs program type BERT
echo.
@echo on
:end

