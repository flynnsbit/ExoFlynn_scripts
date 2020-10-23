
:Version3
if exist %1:version5 goto Version5

copy %1:\*.* >nul

:D_3_1
if exist %1:pcrooms1 goto D_3_2
echo -  Insert Disk 2 and press any key!
echo --
pause>NUL
goto D_3_1
:D_3_2
copy %1:\*.*>nul
echo --
md	sounds
cd sounds
copy %1:\sounds\*.* > nul
cd ..
goto finish


:Version5
copy %1:*.* >nul
:D_5_1
echo -  Insert Disk 2 and press any key!
echo --
pause > nul
if exist %1:pcrooms0 goto D_5_2
goto D_5_1
:D_5_2
copy %1:*.* >nul
:D_5_3
echo -  Insert Disk 3 and press any key!
echo --
pause > nul
if exist %1:pcrooms1 goto D_5_4
goto D_5_3
:D_5_4
copy %1:*.* >nul
:D_5_5
echo -  Insert Disk 4 and press any key!
echo --
pause > nul
if exist %1:pcrooms2 goto D_5_6
goto D_5_5
:D_5_6
copy %1:*.* >nul
md	sounds
cd sounds
copy %1:\sounds\*.* > nul
cd ..

:finish
cls
echo --
echo -
echo - Installation finished.
echo -
echo - To start the program, type the following:
echo -
echo - DOOM [Return]
echo -
echo --
