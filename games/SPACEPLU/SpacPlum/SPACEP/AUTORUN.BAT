@echo off
md c:\Spacep
xcopy *.* c:\Spacep /s
C:
cd \Windows
cd escrit~1
copy c:\Spacep\Plumber.pif 
CD \Spacep
attrib -r *.* /s
SPLUMBER.EXE
cls
exit