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
echo 浜様様様様様様様様様様様様様様様様融
echo �      CALIFORNIA GAMES II (R)     �
echo �      Hard Disk Installation      �
echo 麺様様様様様様様様様様様様様様様様郵
echo � This batch file will now copy all�
echo � game files from your floppies to �
echo � a directory called \CGII at the  �
echo � root of drive %1.                �
echo 藩様様様様様様様様様様様様様様様様夕
pause
:ERRRETURN
md %1\CGII
if exist cgii.exe goto COPY
:DISK1
echo 浜様様様様様様様様様様様様様様様様融
echo �   Please insert the Beach disk.  �
echo 藩様様様様様様様様様様様様様様様様夕
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
echo 浜様様様様様様様様様様様様様様様様融
echo �Insert the 5.25" Snowboarding disk�
echo 藩様様様様様様様様様様様様様様様様夕
pause
if not exist snow goto DISK2
%1\CGII\space %1 120000
if errorlevel 2 goto D2
copy JETSURF.* %1\CGII
%1\CGII\space %1 219000
if errorlevel 2 goto D2
copy SNOW.* %1\CGII
:DISK3
echo 浜様様様様様様様様様様様様様様様様融
echo �Insert the 5.25" Bodyboarding disk�
echo 藩様様様様様様様様様様様様様様様様夕
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
echo 浜様様様様様様様様様様様様様様様様融
echo �Insert the 3.5" Bodyboarding disk.�
echo 藩様様様様様様様様様様様様様様様様夕
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
echo 浜様様様様様様様様様様様様様様様様融
echo �    USAGE: INSTALL [Drive]:       �
echo 麺様様様様様様様様様様様様様様様様郵
echo � Where [Drive] is the letter of   �
echo � the hard disk (C, D, E, or F)    �
echo � on which you wish to install     �
echo � CALIFORNIA GAMES II.             �
echo �                                  �
echo � Sorry, dude.  Try again.         �
echo � See the manual, if you get this  �
echo � error message again.             �
echo 藩様様様様様様様様様様様様様様様様夕
goto X
:NOROOM
space %1 200000
if errorlevel 2 goto NOROOM2
echo 浜様様様様様様様様様様様様様様様様融
echo �  Not enough room on drive %1     �
echo �     for complete install.        �
echo 麺様様様様様様様様様様様様様様様様郵
echo � To install California Games II   �
echo � COMPLETELY on your hard disk,    �
echo � you'll need 1007 Kilobytes free. �
echo �                                  �
echo � But you can install part of it.  �
echo � You'll be prompted to insert     �
echo � floppies while playing the game. �
echo �                                  �
echo � Hit a key to install PART of     �
echo � California Games.                �
echo �                                  �
echo � Or, hit CTRL-C, answer "Y", and  �
echo � delete unnecessary files on      �
echo � drive %1.  Then, run INSTALL     �
echo � again.                           �
echo 藩様様様様様様様様様様様様様様様様夕
pause
GOTO ERRRETURN
:NOROOM2
echo 浜様様様様様様様様様様様様様様様様融
echo �   ERROR: No room on drive %1.    �
echo 麺様様様様様様様様様様様様様様様様郵
echo � To install California Games II   �
echo � on your hard disk, you must have �
echo � at least 200 Kilobytes free,     �
echo � and you should have 1007 Kilo-   � 
echo � bytes free.                      �
echo � Delete unnecessary files on      �
echo � drive %1.  Then, run INSTALL     �
echo � again.  Or play the game from    �
echo � floppies.                        �
echo 藩様様様様様様様様様様様様様様様様夕
goto X
:D2
cls
echo 浜様様様様様様様様様様様様様様様様融
echo �      CALIFORNIA GAMES II         �
echo �      has been partly installed.  �
echo 麺様様様様様様様様様様様様様様様様郵
echo �    Type CGII to play the game.   �
echo 藩様様様様様様様様様様様様様様様様夕
goto d3
:D
cls
echo 浜様様様様様様様様様様様様様様様様融
echo �      CALIFORNIA GAMES II         �
echo �      has been installed.         �
echo 麺様様様様様様様様様様様様様様様様郵
echo �    Type CGII to play the game.   �
echo 藩様様様様様様様様様様様様様様様様夕
:D3
%1:
cd \CGII
del %1\CGII\space.exe
:X
