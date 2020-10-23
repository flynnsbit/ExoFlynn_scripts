echo off
echo DREAMS INSTALL
echo -------------------------------------------------
echo WARNING
echo install dos - 16 meg RAM required -
echo install dos - 30 meg  HD required -
echo WARNING
echo -------------------------------------------------


:boucle

echo Select Destination Drive ( C, D, E, F, G, H)

getkey
if errorlevel 105 goto boucle
if errorlevel 104 goto copyh
if errorlevel 103 goto copyg
if errorlevel 102 goto copyf
if errorlevel 101 goto copye
if errorlevel 100 goto copyd
if errorlevel 99 goto copyc
if errorlevel 98 goto copyb
if errorlevel 97 goto copya
if errorlevel 96 goto boucle

if errorlevel 73 goto boucle
if errorlevel 72 goto copyh
if errorlevel 71 goto copyg
if errorlevel 70 goto copyf
if errorlevel 69 goto copye
if errorlevel 68 goto copyd
if errorlevel 67 goto copyc
if errorlevel 66 goto copyb
if errorlevel 65 goto copya
if errorlevel 64 goto boucle

goto boucle

:copya
call inst_son.bat a
goto fin

:copyb
call inst_son.bat b
goto fin

:copyc
call inst_son.bat c
goto fin

:copyd
call inst_son.bat d
goto fin

:copye
call inst_son.bat e
goto fin

:copyf
call inst_son.bat f
goto fin

:copyg
call inst_son.bat g
goto fin

:copyh
call inst_son.bat h
goto fin

:fin
