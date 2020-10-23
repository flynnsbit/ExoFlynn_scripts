@ECHO OFF
if "%1" == "" Goto Error
if "%1" == "C" Goto Cool
if "%1" == "D" Goto Cool
if "%1" == "E" Goto Cool
if "%1" == "F" Goto Cool
if "%1" == "G" Goto Cool
if "%1" == "H" Goto Cool
if "%1" == "I" Goto Cool
if "%1" == "J" Goto Cool
if "%1" == "K" Goto Cool
if "%1" == "L" Goto Cool
if "%1" == "M" Goto Cool
if "%1" == "N" Goto Cool
if "%1" == "O" Goto Cool
if "%1" == "P" Goto Cool
if "%1" == "Q" Goto Cool
if "%1" == "R" Goto Cool
if "%1" == "S" Goto Cool
if "%1" == "T" Goto Cool
if "%1" == "U" Goto Cool
if "%1" == "V" Goto Cool
if "%1" == "W" Goto Cool
if "%1" == "X" Goto Cool
if "%1" == "Y" Goto Cool
if "%1" == "Z" Goto Cool
if "%1" == "c" Goto Cool
if "%1" == "d" Goto Cool
if "%1" == "e" Goto Cool
if "%1" == "f" Goto Cool
if "%1" == "g" Goto Cool
if "%1" == "h" Goto Cool
if "%1" == "i" Goto Cool
if "%1" == "j" Goto Cool
if "%1" == "k" Goto Cool
if "%1" == "l" Goto Cool
if "%1" == "m" Goto Cool
if "%1" == "n" Goto Cool
if "%1" == "o" Goto Cool
if "%1" == "p" Goto Cool
if "%1" == "q" Goto Cool
if "%1" == "r" Goto Cool
if "%1" == "s" Goto Cool
if "%1" == "t" Goto Cool
if "%1" == "u" Goto Cool
if "%1" == "v" Goto Cool
if "%1" == "w" Goto Cool
if "%1" == "x" Goto Cool
if "%1" == "y" Goto Cool
if "%1" == "z" Goto Cool
goto Error

:Cool
cls
echo.
echo.
echo TDUJAM PRESENTS: THE PURE WARGAME 100 PERCENT CD from IMPRESSIONS!
echo                       ФФФ A ФФФ      мммм  ммм   мм мм
echo              ммммммммммммм  ммм  ммм  лл ллплл ллплплл
echo                лВл ммм  лВл лВл  лВл  пп лл лл пп В ллr
echo              А лБл ллл  лБл лБл  лБл ппппллпллппп Б ллo
echo              Б лВл ллл  лВл лВл  лВл  лл лл лл лл А ллy
echo              В ппп ппппппп   пппппп   лл лл лл лл   лл
echo              л ФФФФФФФФФФФФФФФФФФ ллммлп ФФФФФФФФФФФ м
echo              лмммммммммммммммммммммммммммм [0x/02] ммл
echo.
echo.
pause
ARJ X -Y -V DISK.001 %1:\
cls
echo Un-ARJ Complete!  Now Running the QQP Installer.
pause
%1:
CD\
INSTALL
del %1:\ddb.001
del %1:\install.dat
del %1:\install.exe
del %1:\disk.id
Goto End

:Error
cls
echo.
echo.
echo TDUJAM PRESENTS: THE PURE WARGAME 100 PERCENT CD from IMPRESSIONS!
echo                       ФФФ A ФФФ      мммм  ммм   мм мм
echo              ммммммммммммм  ммм  ммм  лл ллплл ллплплл
echo                лВл ммм  лВл лВл  лВл  пп лл лл пп В ллr
echo              А лБл ллл  лБл лБл  лБл ппппллпллппп Б ллo
echo              Б лВл ллл  лВл лВл  лВл  лл лл лл лл А ллy
echo              В ппп ппппппп   пппппп   лл лл лл лл   лл
echo              л ФФФФФФФФФФФФФФФФФФ ллммлп ФФФФФФФФФФФ м
echo              лмммммммммммммммммммммммммммм [0x/02] ммл
echo.
echo.
echo To Use the Install Specify the Drive You Wish To Install To.
echo Eg: "INSTALL C"        -or-         "INSTALL <DRIVE LETTER>"
echo Make Sure You Have At Least 10+ MB Free On Your Hard Drive.
echo.
echo.

:end
