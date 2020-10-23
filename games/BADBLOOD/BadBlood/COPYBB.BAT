echo off
cls
if %2x == x goto nodest
if %2 == a: goto skip1
if %2 == b: goto skip1
if %2 == c: goto skip1
if %2 == d: goto skip1
if %2 == e: goto skip1
if %2 == f: goto skip1
if %2 == g: goto skip1
if %2 == A: goto skip1
if %2 == B: goto skip1
if %2 == C: goto skip1
if %2 == D: goto skip1
if %2 == E: goto skip1
if %2 == F: goto skip1
if %2 == G: goto skip1
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
echo บ                                Bad Blood                                    บ
echo บ                                                                             บ
echo บ                       Hard Disk Installation Program                        บ
echo บ                                                                             บ
echo บ     Bad Blood will be placed in %2\BADBLOOD.  Press any key to begin or     บ
echo บ                                                                             บ
echo บ     Control - C  followed by Y to abort.                                    บ
echo บ                                                                             บ
echo บ                                                                             บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
getfree 1474560 %2
if errorlevel 1 goto error
md %2\Badblood
cls
echo Copying files...
%2
cd \badblood
copy %1\*.*>NUL
insub %2 %1
goto alldone
:error
cls
echo There is insufficient free space on your hard disk to copy BAD BLOOD on it.
echo In order to copy BAD BLOOD, you must free additional space.
goto alldone
:nodest
cls
echo Usage : COPYBB [source drive number] [destination drive number]
echo *
echo For example, to copy to drive C from drive A. Type 'COPYBB  A: C:'
:alldone
