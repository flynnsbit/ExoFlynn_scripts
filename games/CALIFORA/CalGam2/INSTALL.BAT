echo off
if %1!==! goto USAGE
if %1 == c: goto CONTINUE
if %1 == C: goto CONTINUE
if %1 == d: goto CONTINUE
if %1 == D: goto CONTINUE
if %1 == e: goto CONTINUE
if %1 == E: goto CONTINUE
if %1 == f: goto CONTINUE
if %1 == F: goto CONTINUE
goto USAGE
:CONTINUE
space %1 1007000
if errorlevel 2 goto NOROOM
cls
echo ษออออออออออออออออออออออออออออออออออป
echo บ      CALIFORNIA GAMES II (R)     บ
echo บ      Hard Disk Installation      บ
echo ฬออออออออออออออออออออออออออออออออออน
echo บ This batch file will now copy allบ
echo บ game files from your floppies to บ
echo บ a directory called \CGII at the  บ
echo บ root of drive %1.                บ
echo ศออออออออออออออออออออออออออออออออออผ
pause
:ERRRETURN
md %1\CGII
if exist cgii.exe goto COPY
:DISK1
echo ษออออออออออออออออออออออออออออออออออป
echo บ   Please insert the Beach disk.  บ
echo ศออออออออออออออออออออออออออออออออออผ
pause
if not exist cgii.exe goto DISK1
:COPY
copy CGII.EXE  %1\CGII
copy BEACH.* %1\CGII
copy space.exe %1\CGII
%1\CGII\space %1 116000
if errorlevel 2 goto D2
copy GLIDE.* %1\CGII
if not exist jetsurf goto next1
%1\CGII\space %1 120000
if errorlevel 2 goto D2
copy JETSURF.* %1\CGII
if not exist snow goto next1
%1\CGII\space %1 219000
if errorlevel 2 goto D2
copy SNOW.* %1\CGII
if not exist boogie goto next1
%1\CGII\space %1 119000
if errorlevel 2 goto D2
copy BOOGIE.* %1\CGII
if not exist skate goto next1
%1\CGII\space %1 223000
if errorlevel 2 goto D2
copy SKATE.* %1\CGII
:next1
if exist snow goto DISK23
:DISK2
echo ษออออออออออออออออออออออออออออออออออป
echo บInsert the 5.25" Snowboarding diskบ
echo ศออออออออออออออออออออออออออออออออออผ
pause
if not exist snow goto DISK2
%1\CGII\space %1 120000
if errorlevel 2 goto D2
copy JETSURF.* %1\CGII
%1\CGII\space %1 219000
if errorlevel 2 goto D2
copy SNOW.* %1\CGII
:DISK3
echo ษออออออออออออออออออออออออออออออออออป
echo บInsert the 5.25" Bodyboarding diskบ
echo ศออออออออออออออออออออออออออออออออออผ
pause
if not exist skate goto DISK3
%1\CGII\space %1 119000
if errorlevel 2 goto D2
copy BOOGIE.* %1\CGII
%1\CGII\space %1 223000
if errorlevel 2 goto D2
copy SKATE.* %1\CGII
goto D
:DISK23
if exist skate goto D
echo ษออออออออออออออออออออออออออออออออออป
echo บInsert the 3.5" Bodyboarding disk.บ
echo ศออออออออออออออออออออออออออออออออออผ
pause
if not exist skate goto DISK23
%1\CGII\space %1 119000
if errorlevel 2 goto D2
copy BOOGIE.* %1\CGII
%1\CGII\space %1 223000
if errorlevel 2 goto D2
copy SKATE.* %1\CGII
goto D
:USAGE
echo ษออออออออออออออออออออออออออออออออออป
echo บ    USAGE: INSTALL [Drive]:       บ
echo ฬออออออออออออออออออออออออออออออออออน
echo บ Where [Drive] is the letter of   บ
echo บ the hard disk (C, D, E, or F)    บ
echo บ on which you wish to install     บ
echo บ CALIFORNIA GAMES II.             บ
echo บ                                  บ
echo บ Sorry, dude.  Try again.         บ
echo บ See the manual, if you get this  บ
echo บ error message again.             บ
echo ศออออออออออออออออออออออออออออออออออผ
goto X
:NOROOM
space %1 200000
if errorlevel 2 goto NOROOM2
echo ษออออออออออออออออออออออออออออออออออป
echo บ  Not enough room on drive %1     บ
echo บ     for complete install.        บ
echo ฬออออออออออออออออออออออออออออออออออน
echo บ To install California Games II   บ
echo บ COMPLETELY on your hard disk,    บ
echo บ you'll need 1007 Kilobytes free. บ
echo บ                                  บ
echo บ But you can install part of it.  บ
echo บ You'll be prompted to insert     บ
echo บ floppies while playing the game. บ
echo บ                                  บ
echo บ Hit a key to install PART of     บ
echo บ California Games.                บ
echo บ                                  บ
echo บ Or, hit CTRL-C, answer "Y", and  บ
echo บ delete unnecessary files on      บ
echo บ drive %1.  Then, run INSTALL     บ
echo บ again.                           บ
echo ศออออออออออออออออออออออออออออออออออผ
pause
GOTO ERRRETURN
:NOROOM2
echo ษออออออออออออออออออออออออออออออออออป
echo บ   ERROR: No room on drive %1.    บ
echo ฬออออออออออออออออออออออออออออออออออน
echo บ To install California Games II   บ
echo บ on your hard disk, you must have บ
echo บ at least 200 Kilobytes free,     บ
echo บ and you should have 1007 Kilo-   บ 
echo บ bytes free.                      บ
echo บ Delete unnecessary files on      บ
echo บ drive %1.  Then, run INSTALL     บ
echo บ again.  Or play the game from    บ
echo บ floppies.                        บ
echo ศออออออออออออออออออออออออออออออออออผ
goto X
:D2
cls
echo ษออออออออออออออออออออออออออออออออออป
echo บ      CALIFORNIA GAMES II         บ
echo บ      has been partly installed.  บ
echo ฬออออออออออออออออออออออออออออออออออน
echo บ    Type CGII to play the game.   บ
echo ศออออออออออออออออออออออออออออออออออผ
goto d3
:D
cls
echo ษออออออออออออออออออออออออออออออออออป
echo บ      CALIFORNIA GAMES II         บ
echo บ      has been installed.         บ
echo ฬออออออออออออออออออออออออออออออออออน
echo บ    Type CGII to play the game.   บ
echo ศออออออออออออออออออออออออออออออออออผ
:D3
%1:
cd \CGII
del %1\CGII\space.exe
:X
