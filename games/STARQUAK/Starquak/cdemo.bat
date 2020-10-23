:TOP
echo off
cls
type menu.doc
getkey
if errorlevel 64 goto F6
if errorlevel 63 goto F5
if errorlevel 62 goto F4
if errorlevel 61 goto F3
if errorlevel 60 goto F2
if errorlevel 59 goto F1
goto TOP

:F1
cls
type options.doc
getkey
if errorlevel 61 goto TOP
if errorlevel 60 goto LASPRN
if errorlevel 59 goto LASREA
goto TOP

:F2
cls
type options.doc
getkey
if errorlevel 61 goto TOP
if errorlevel 60 goto POWPRN
if errorlevel 59 goto POWREA
goto TOP

:F3
cls
type options.doc
getkey
if errorlevel 61 goto TOP
if errorlevel 60 goto BALLPRN
if errorlevel 59 goto BALLREA
goto TOP

:F4
cls
type options.doc
getkey
if errorlevel 61 goto TOP
if errorlevel 60 goto SWIPRN
if errorlevel 59 goto SWIREA
goto TOP

:F5
cls
type options.doc
getkey
if errorlevel 61 goto TOP
if errorlevel 60 goto HICKPRN
if errorlevel 59 goto HICKREA
goto TOP

:F6
goto END

:LASREA
cls
read laser.doc
getkey
goto TOP

:LASPRN
cls
copy laser.doc prn
goto TOP

:POWREA
cls
read poker.doc
getkey
goto TOP

:POWPRN
cls
copy poker.doc prn
goto TOP

:BALLREA
cls
read bball.doc
getkey
goto TOP

:BALLPRN
cls
copy bball.doc prn
goto TOP

:SWIREA
cls
read switch.doc
getkey
goto TOP

:SWIPRN
cls
copy switch.doc prn
goto TOP

:HICKREA
cls
read hickory.doc
getkey
goto TOP

:HICKPRN
cls
copy hickory.doc prn
goto TOP

:END
cls
cd \

