echo off
cls
echo ÿ
echo     ษออออออออออออออออออออออออออออออออออออออป
echo     บ Logic Master Hard Disk Installation. บ
echo     ศออออออออออออออออออออออออออออออออออออออผ
echo ÿ
if not exist DISK1.CFG goto :FAIL
if "%1==" goto USAGE
if "%2==" goto USAGE
echo ÿ
echo Logic Master will be installed in %1%2
echo are these settings correct? (Y or N)
YN
if errorlevel 1 goto NO
for %%d in (A: B: C: D: E: F: G: H: I: J: K: L: M:) do if "%%d"=="%1" goto OK
for %%d in (N: O: P: Q: R: S: T: U: V: W: X: Y: Z:) do if "%%d"=="%1" goto OK
for %%d in (a: b: c: d: e: f: g: h: i: j: k: l: m:) do if "%%d"=="%1" goto OK
for %%d in (n: o: p: q: r: s: t: u: v: w: x: y: z:) do if "%%d"=="%1" goto OK
goto BADD
:OK
echo ÿ
echo Ignore any "Directory already exists" messages if
echo the specified directory or directories already exist.
mkdir %1%2
echo ÿ
echo Copying files from disk #1
copy /v *.* %1%2. > nul
if exist %1%2\A goto :DONE
echo ÿ
echo     ษออออออออออออออออออออออออออออออออป
echo     บ PARTIAL INSTALLATION COMPLETE. บ
echo     ศออออออออออออออออออออออออออออออออผ
echo ÿ
echo   To complete the installation, please type INSTALL2 drive_name
echo   at the DOS prompt, where drive_name is the name of the drive
echo   that you will insert Logic Master disk #2 in.
echo ÿ
%1
cd %2
goto ENDD
:DONE
copy /v diska.cfg %1%2\disk1.cfg > nul
%1
cd %2
echo ÿ
echo     ษอออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ Logic Master has been successfully installed. บ
echo     ศอออออออออออออออออออออออออออออออออออออออออออออออผ
echo ÿ
echo NOTE:
echo       To play the game type LOGIC .
goto ENDD
:FAIL
echo ÿ
echo You must log onto the drive with Logic Master disk #1
echo in it before typing INSTALL.
goto ENDD
:USAGE
echo ÿ
echo    USAGE  INSTALL drive_name directory_name
echo ÿ
echo    EXAMPLE:  INSTALL C: \LOGIC
echo              will install Logic Master in the C:\LOGIC directory.
goto ENDD
:NO
echo ÿ
:NO2
echo Please run the INSTALL program again with the correct options.
goto ENDD
:BADD
echo ÿ
echo The drive that you specified is illegal.
goto NO2
:ENDD
echo ÿ
echo on
