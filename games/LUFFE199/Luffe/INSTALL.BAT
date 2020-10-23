echo off
cls

if "%1" == "" goto DriveNeeded

if %1 == c: goto MakeDirectory
if %1 == C: goto MakeDirectory
if %1 == d: goto MakeDirectory
if %1 == D: goto MakeDirectory
if %1 == e: goto MakeDirectory
if %1 == E: goto MakeDirectory
if %1 == f: goto MakeDirectory
if %1 == F: goto MakeDirectory
if %1 == g: goto MakeDirectory
if %1 == G: goto MakeDirectory
if %1 == h: goto MakeDirectory
if %1 == H: goto MakeDirectory
if %1 == i: goto MakeDirectory
if %1 == I: goto MakeDirectory
if %1 == j: goto MakeDirectory
if %1 == J: goto MakeDirectory
if %1 == k: goto MakeDirectory
if %1 == K: goto MakeDirectory
if %1 == l: goto MakeDirectory
if %1 == L: goto MakeDirectory
if %1 == m: goto MakeDirectory
if %1 == M: goto MakeDirectory
if %1 == n: goto MakeDirectory
if %1 == N: goto MakeDirectory
if %1 == o: goto MakeDirectory
if %1 == O: goto MakeDirectory
if %1 == p: goto MakeDirectory
if %1 == P: goto MakeDirectory

:InvalidDrive
echo "%1" er ikke et gyldigt drev navn. Skriv venligst drevets navn
echo efterfulgt af kolon:
goto Example

:DriveNeeded
echo Angiv venligst hvilket drev De nsker at installere "Luffe" p
echo for eksempel:
:Example
echo 
echo         install c:
goto End

:MakeDirectory
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                               บ
echo บ                            L U F F E                          บ
echo บ                                                               บ
echo บ                    Hard Disk Install Utility                  บ
echo บ                                                               บ
echo บ                                                               บ
echo บ Dette program vil installere "Luffe" i directoriet "LUFFE"    บ
echo บ p drev %1. Hvis De nsker at stopppe tryk CTRL-C nu.         บ
echo บ                                                               บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo 
pause
echo 

if exist %1\LUFFE\*.* goto DirectoryExists
mkdir %1\LUFFE
goto CopyFiles

:DirectoryExists
echo Advarsel: Directoriet %1\LUFFE eksistere allerede.  Tryk Ctrl-C
echo            nu hvis De nker at stoppe installationen nu.
echo 
pause
echo 

:CopyFiles
echo Kopiere "Luffe Disk 1" til %1\LUFFE ...
copy *.* %1\LUFFE > NUL

if not exist %1\LUFFE\LUFFE.EXE goto InstallError
if not exist %1\LUFFE\LEVEL.1 goto InstallError
if not exist %1\LUFFE\FANGET.SPC goto InstallError

ECHO Kopiere AUTOEXEC.BAT til AUTOEXEC.OLD ...
COPY %1\AUTOEXEC.BAT %1\AUTOEXEC.OLD > NUL
COPY %1\LUFFE\AUTOEXEC.LUF %1\AUTOEXEC.BAT > NUL

ECHO Kopiere CONFIG.SYS til CONFIG.OLD ...
COPY %1\CONFIG.SYS %1\CONFIG.OLD > NUL
COPY %1\LUFFE\CONFIG.LUF %1\CONFIG.SYS > NUL

echo "Luffe" er nu installeret p drev %1.
echo Skriv "LUFFE" for at starte spillet ...

%1
cd %1\LUFFE

goto End

:InstallError
echo Advarsel: Installation af "Luffe" forlb ikke som planlagt.
echo            Dette kan muligvis skyldes at De ikke har plads
echo            nok p Deres harddisk.
echo 
pause
echo 

:End


