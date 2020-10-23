echo 	off
cls
if not exist a:readme.doc goto noreadme
type	a:readme.doc
pause
:noreadme
if not exist setup.bat goto cf
echo .
echo .                  ** IMPORTANT **
echo .
echo .       You must be logged into the DESTINATION drive
echo .      and have the distribution 'MASTER A' in drive A:
echo .              drive before running A:SETUP
echo .
goto x
:cf
a:setuprg
if errorlevel 1 goto x
setupt
:x
