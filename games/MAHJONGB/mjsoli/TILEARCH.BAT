@echo off
rem %1 = complete name of file; %2 = archive type
rem %3 = specific tile set name; %4 = name without the .til extension
if exist doc.doc del doc.doc
if %2 == .ZIP goto zip
if %2 == .LZH goto lha
if %2 == .ARJ goto arj
if %2 == .PAK goto pak
echo.
echo Unknown archive type %2
echo.
pause
goto end
:zip
pkunzip -o %1 %3 %4.doc %4.txt
goto end
:lha
lha x %1 %3 %4.doc %4.txt
goto end
:arj
arj e %1 %3 %4.doc %4.txt
goto end
:pak
pak e %1 %3 %4.doc %4.txt
:end
if exist %4.doc rename %4.doc doc.doc
if exist %4.txt rename %4.txt doc.doc
