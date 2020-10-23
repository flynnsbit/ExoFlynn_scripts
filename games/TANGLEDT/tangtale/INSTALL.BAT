echo off
cls
if %1x == x goto nodest
if %1 == a: goto skip1
if %1 == b: goto skip1
if %1 == c: goto skip1
if %1 == d: goto skip1
if %1 == e: goto skip1
if %1 == f: goto skip1
if %1 == g: goto skip1
if %1 == A: goto skip1
if %1 == B: goto skip1
if %1 == C: goto skip1
if %1 == D: goto skip1
if %1 == E: goto skip1
if %1 == F: goto skip1
if %1 == G: goto skip1
goto nodest
:skip1
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                             บ
echo บ                              Tangled Tales                                  บ
echo บ                                                                             บ
echo บ                       Hard Disk Installation Program                        บ
echo บ                                                                             บ
echo บ     Tangled Tales will be placed in %1\Tangled.  Press any key to begin     บ
echo บ                                                                             บ
echo บ     or Control - C  followed by Y to abort.                                 บ
echo บ                                                                             บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
cls
echo Copying files...
md %1\tangled
%1
cd \tangled
copy a:\*.*>NUL
insub %1
goto alldone
:nodest
cls
echo Usage : Install [drive number]
echo *
echo For example, to Install on drive C. Type 'Install C:'
:alldone
