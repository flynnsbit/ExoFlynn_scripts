echo off
if "%1" == "" goto nodrive
if %1 == c: goto start
if %1 == C: goto start
if %1 == d: goto start
if %1 == D: goto start
if %1 == e: goto start
if %1 == E: goto start
if %1 == f: goto start
if %1 == F: goto start
goto nodrive

:start
if "%2" == "" goto skip
if %2 == restart goto check1

:skip
cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ              HOLE-IN-ONE  Hard Disk Installation                บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo 

if not exist %1\minigolf\*.* echo **** Creating directory %1\minigolf...
if not exist %1\minigolf\vga.com md %1\minigolf
md %1\minigolf\tutorial
md %1\minigolf\classics
md %1\minigolf\fantasy
md %1\minigolf\intermed
md %1\minigolf\expert
md %1\minigolf\farout
md %1\minigolf\holidays
md %1\minigolf\alphabet
copy insthd.bat %1\minigolf >nul
%1\minigolf\insthd.bat %1 restart

:check1
if exist vga.com goto disk1
echo 
echo Insert PROGRAM DISK  into  the floppy drive,  press any key to continue.
pause >nul
goto check1

:disk1
echo **** Copying PROGRAM DISK    to %1\minigolf...
copy *.* %1\minigolf >nul

:check2
if exist course goto disk2
echo  
echo Insert Tutorial/Classics Disk #2 in the drive, press any key to continue
pause >nul
cd tutorial
goto check2

:disk2
echo **** Copying Tutorial Course... to %1\minigolf...
copy *.* %1\minigolf\tutorial >NUL
cd \

:check3
if exist course goto disk3
cd classics
goto check3

:disk3
echo **** Copying Classics Course... to %1\minigolf...
copy *.* %1\minigolf\classics >NUL
cd \

:check4
if exist course goto disk4
echo  
echo Insert Fantasy Disk #3 in the drive, press any key to continue
pause >nul
cd fantasy
goto check4

:disk4
echo **** Copying Fantasy Course... to %1\minigolf...
copy *.* %1\minigolf\fantasy >NUL
cd \
:check5
if exist course goto disk5
echo  
echo Insert Intermediate Disk #4 in the drive, press any key to continue
pause >nul
cd intermed
goto check5

:disk5
echo **** Copying Intermediate Course... to %1\minigolf...
copy *.* %1\minigolf\intermed >NUL
cd \
:check6
if exist course goto disk6
echo  
echo Insert Expert Disk #5 in the drive, press any key to continue
pause >nul
cd expert
goto check6

:disk6
echo **** Copying Expert Course... to %1\minigolf...
copy *.* %1\minigolf\expert >NUL
cd \
:check7
if exist course goto disk7
echo  
echo Insert Holidays Disk #6 in the drive, press any key to continue
pause >nul
cd holidays
goto check7

:disk7
echo **** Copying Holidays Course... to %1\minigolf...
copy *.* %1\minigolf\holidays >NUL
cd \
:check8
if exist course goto disk8
echo  
echo Insert Farout Disk #7 in the drive, press any key to continue
pause >nul
cd farout
goto check8

:disk8
echo **** Copying Farout Course... to %1\minigolf...
copy *.* %1\minigolf\farout >NUL
cd \
:check9
if exist course goto disk9
echo  
echo Insert Alphabet Disk #8 in the drive, press any key to continue
pause >nul
cd alphabet
goto check9

:disk9
echo **** Copying Alphabet Course... to %1\minigolf...
copy *.* %1\minigolf\alphabet >NUL
cd \

:copyend
cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ     Done installing HOLE-IN-ONE...       To play:               บ
echo บ                                                                 บ
echo บ   go into the minigolf directory and at the prompt type: GOLF   บ
echo บ                                                                 บ
echo บ                                                                 บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
%1
pause
goto end

:badcopy
cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ             HOLE-IN-ONE  Hard Disk Installation                 บ
echo บ                                                                 บ
echo บ Installation Error: The error might be caused by...             บ
echo บ                                                                 บ
echo บ * insufficient space on the hard disk.                          บ
echo บ                                                                 บ
echo บ * damaged disk or file.                                         บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
goto end

:nodrive
cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ            HOLE-IN-ONE  Hard Disk Installation                  บ
echo บ                                                                 บ
echo บ Installation Error:                                             บ
echo บ                                                                 บ
echo บ * You must specify hard drive to install files onto!            บ
echo บ                                                                 บ
echo บ * For example, "INSTHD C:" will install on hard drive C.        บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
:end
echo 

