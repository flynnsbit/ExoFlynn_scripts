echo off
cls
echo ÿ
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ Logic Master Hard Disk Installation.  (Part 2) บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออผ
echo ÿ
if not exist DISK1.CFG goto FAIL
if "%1==" goto USAGE
for %%d in (A: B: C: D: E: F: G: H: I: J: K: L: M:) do if "%%d"=="%1" goto OK
for %%d in (N: O: P: Q: R: S: T: U: V: W: X: Y: Z:) do if "%%d"=="%1" goto OK
for %%d in (a: b: c: d: e: f: g: h: i: j: k: l: m:) do if "%%d"=="%1" goto OK
for %%d in (n: o: p: q: r: s: t: u: v: w: x: y: z:) do if "%%d"=="%1" goto OK
goto BADD
:OK
echo ÿ
:WAIT
echo Please insert Logic Master disk #2 in drive %1
pause > nul
if not exist %1\DISK2.CFG goto WAIT
echo ÿ
echo Copying files from disk #2 to the current directory.
copy /v %1\*.* > nul
:DONE
copy /v diska.cfg disk1.cfg > nul
echo ÿ
echo     ษอออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ Logic Master has been successfully installed. บ
echo     ศอออออออออออออออออออออออออออออออออออออออออออออออผ
echo ÿ
echo NOTE:
echo       To play the game type LOGIC .
goto END
:FAIL
echo ÿ
echo You must log onto the hard disk and be in the directory
echo that contains the files from Logic Master disk #1 before
echo typing INSTALL2.
goto END
:USAGE
echo ÿ
echo    USAGE  INSTALL2 drive_name
echo ÿ
echo    EXAMPLE:  INSTALL2 A:
echo              will copy the Logic Master disk #2 files from the
echo              disk in drive A: into the current directory on the
echo              hard disk.
goto END
:BADD
echo ÿ
echo The drive that you specified is illegal.
echo Please run the INSTALL2 program again with the correct options.
:END
echo ÿ
echo on
