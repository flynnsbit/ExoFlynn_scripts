@echo off
:begin
BfE clear1
bfe ncsay 15 1 14 1 Olsen Outdoors Software Installer and Document Printer
bfe box 10 3 14 3 64 9
bfe ncsay 0 3 16 4 1. Install BASSTOUR to Floppy or Hard Disk
bfe ncsay 0 3 16 5 2. Print BASSTOUR Manual
bfe ncsay 0 3 16 6 3. Print BASSTOUR Registration Form
bfe ncsay 0 3 16 7 4. Print Software Catalog and Order Form
bfe ncsay 0 3 16 8 5. QUIT this program
BfE ncsay 14 1 18 11 Please enter the NUMBER of your choice: 
BfE instr 12345
if errorlevel 53 goto Abort
if errorlevel 52 goto PrintCat
if errorlevel 51 goto PrintReg
if errorlevel 50 goto PrintMan
if errorlevel 49 goto Install1
bfe beep
goto begin
:Install1
bfe clear1
if "%1" == "" goto Install2
bfe say 15 1 2 1 Ready to install BASSTOUR onto your hard disk.
bfe say 15 1 2 2 The game will be installed in the drive\directory shown
BfE say 15 1 2 3 below.
echo "%1" 
bfe ncsay 15 1 2 5 Is this okay? (y-n) 
BfE y-n
if not errorlevel 89 goto Abort1
bfe clear1
bfe say 14 1 10 1 Beginning installation of BASSTOUR......
if not exist %1\nul md %1
copy *.* %1
copy bt.bat %1
bfe delay3000
bfe clear0
echo Installation of BASSTOUR has been completed. To run BASSTOUR,
echo first change to the directory "%1" then type BASSTOUR.
echo.
echo Please enter the NUMBER of what you want to do next from the list below.
echo.
echo.
echo 1. Quit this program and return to DOS.
echo 2. Return to the MAIN MENU of this program.
echo.
BfE ncsay 14 0 20 12 Please enter either 1 or 2  
BfE instr 12
if errorlevel 50 goto begin
goto abort
:Install2
bfe clear1
bfe say 15 1 2 2 Ready to install BASSTOUR onto your hard disk. The game will be
bfe ncsay 15 1 2 3 installed in the drive\directory C:\BTOUR. Is this okay? (y/n) 
BfE y-n
if not errorlevel 89 goto Abort1
bfe clear1
bfe say 14 1 2 1 beginning installation of BASSTOUR to C:\BTOUR......
if not exist c:\btour\nul md c:\btour
copy *.* c:\btour
copy bt.bat c:\
bfe delay3000
cls
echo Installation of BASSTOUR has been completed. Please enter the
echo  NUMBER of what you want to do next from the list below.
echo.
echo.
echo 1. Quit this program and run BASSTOUR (leave the floppy inserted for now!)
echo 2. Quit this program and return to DOS.
echo 3. Return to the MAIN MENU of this program.
echo.
BfE ncsay 14 1 2 10 Please enter either 1, 2, or 3 
BfE instr 123
if errorlevel 51 goto begin
if errorlevel 50 goto abort
if errorlevel 49 goto RUNBTOUR
goto begin
:PrintMan
bfe clear1
bfe say 15 1 10 1 Ready to print BASSTOUR manual (about 25 pages).
BfE ncsay 14 1 10 3 Press P to PRINT, any other key to CANCEL.
BfE
if not errorlevel 80 goto begin
bfe say 15 1 10 5 Please wait. Printing BASSTOUR users manual....
copy bt.doc prn
bfe delay2000
goto begin
:PrintReg
bfe clear1
bfe say 15 1 10 1 Ready to print BASSTOUR registration form.
BfE ncsay 14 1 10 3 Press P to PRINT, any other key to CANCEL.
BfE
if not errorlevel 80 goto begin
bfe say 15 1 10 5 Please wait. Printing BASSTOUR registration form.....
copy register.txt prn
bfe delay2000
goto begin
:PrintCat
bfe clear1
bfe say 15 1 15 1 Ready to print Software Catalog and Order Form.
BfE ncsay 14 1 15 3 Press P to PRINT, any other key to CANCEL:
bfe
if not errorlevel 80 goto begin
bfe say 10 1 15 5 Please wait. Printing Software Catalog and Order Form.....
copy orderfrm.txt prn
bfe delay2000
goto begin
:Abort1
cls
echo Cancelling BASSTOUR installation.
echo.
echo To specify a directory other than C:\BTOUR, restart the BTINSTAL program
echo with a command similar to this:
echo.
BfE say 14 1 20 6 BTINSTAL (drive)\(directory)
echo.
echo where (drive) specifies the hard disk drive you want (C:, D: etc.) 
echo followed by a back-slash (\ with no spaces) and the name of the
echo directory to install it in (again with no spaces).
echo.
goto finish
:RUNBTOUR1
cd %1
%1\basstour
goto finish
:RUNBTOUR
cd c:\btour
c:\btour\basstour
goto finish
:abort
cls
:finish