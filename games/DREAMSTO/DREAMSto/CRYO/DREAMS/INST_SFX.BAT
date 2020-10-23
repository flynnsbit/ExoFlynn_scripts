echo Install Dreams on drive %1:
echo Please wait...
echo -------------------------------------------------


md %1:\cryo > NUL
md %1:\cryo\dreams > NUL
md %1:\cryo\dreams\data > NUL

md %1:\cryo\dreams\data\3dc > NUL
md %1:\cryo\dreams\data\sound > NUL
md %1:\cryo\dreams\data\univbe > NUL
md %1:\cryo\dreams\data\game > NUL
md %1:\cryo\dreams\data\anim > NUL

xcopy *.* %1:\cryo\dreams > NUL
xcopy data\hd.id %1:\cryo\dreams\data > NUL
xcopy data\replay.bin %1:\cryo\dreams\data > NUL

xcopy data\3dc\dialog.drd %1:\cryo\dreams\data\3dc > NUL
xcopy data\3dc\*.3dc %1:\cryo\dreams\data\3dc > NUL
xcopy data\3dc\*.3dm %1:\cryo\dreams\data\3dc > NUL

xcopy data\sound\*.* %1:\cryo\dreams\data\sound > NUL
xcopy data\univbe\*.* %1:\cryo\dreams\data\univbe > NUL

%1:

cd %1:\cryo\dreams\data\sound
call setsound.exe

cd %1:\cryo\dreams

echo -------------------------------------------------
echo Full install : 100 Meg required
echo Minimum install : 30 Meg required
echo -------------------------------------------------

:instd

echo Do you want the Minimum install ( Yes, No)
getkey

if errorlevel 122 goto instDefault
if errorlevel 121 goto instdMin
if errorlevel 120 goto instDefault
if errorlevel 111 goto instDefault
if errorlevel 110 goto instdMax
if errorlevel 109 goto instDefault
if errorlevel 90 goto instDefault
if errorlevel 89 goto instdMin
if errorlevel 88 goto instDefault
if errorlevel 79 goto instDefault
if errorlevel 78 goto instdMax
if errorlevel 77 goto instDefault

goto instd

:instdMax
copy %1:\cryo\dreams\data\hd.id %1:\cryo\dreams\data\full.id

:instdMin
:instDefault
dreamsfx.exe
echo on

