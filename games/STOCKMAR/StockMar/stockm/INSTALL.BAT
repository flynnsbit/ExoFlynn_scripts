echo off
cls
if %1: == : goto INFO
if %1 == a: goto DOIT
if %1 == A: goto DOIT
if %1 == b: goto DOIT
if %1 == B: goto DOIT
:NOTE
echo �======================================================================
echo �==                                                                  ==
echo  ==                    STOCK MARKET: The Game                        ==
echo �==                                                                  ==
echo  ==  This program will help you correctly install STOCK MARKET onto  ==
echo �==  your hard drive.  There have been some last minute improvements ==
echo �==  so please read the following information to insure that you     ==
echo �==  install STOCK MARKET correctly:                                 ==
echo �==                                                                  ==
echo �==  * This program works on CGA, EGA and VGA monitors only. If you  ==
echo �==    are using a CGA monitor, then you will only need Disk 1 to    ==
echo  ==    install your program.  Otherwise, you will use Disk 2.        ==
echo �==                                                                  ==
echo �==  * When typing the INSTALL command, be sure to include both the  ==
echo  ==    source drive (usually A: or B:) followed by a space and then  ==
echo �==    the destination drive (usually C: or D:)                      ==
echo �==                                                                  ==
echo  ==  EXAMPLES: If you wanted to install the CGA version from your B: ==
echo �==  Drive to your C: Drive, insert Disk 1 in your B: Drive and      ==
echo �==  type: "INSTALL B: C:".  If you wanted to install the EGA/VGA    ==
echo �==  version from Drive A: to Drive D:, you would insert Disk 2 in   ==
echo �==  your A: Drive and type "INSTALL A: D:"                          ==
echo �==                                                                  ==
echo �======================================================================
pause
goto END
:DOIT
if %2: == : goto INFO
cls
echo To Install the EGA version of STOCK MARKET to your %2 Drive,
echo please insert Disk 1 into your %1 Drive, then press any key.
echo Press "Ctrl-Break" to exit
echo �
pause
echo Installing Stock Market on drive %2
%2
cd\
md STOCK
cd STOCK
copy %1*.* 
md PAK
cd PAK
copy %1\pak\*.* 
cd ..
echo �
echo Installation complete!
echo �
echo To run Stock market on your hardrive:
echo �
echo    %1 %2
echo    %2 cd \STOCK
echo    %2 START
goto END
:INFO
echo To install Stock Market: The Game to you hard drive, type the following
echo using the appropriate parameters:              
echo �                                                  
echo �                     INSTALL [source] [destination]
echo �
echo Examples: "INSTALL A: C:" or "INSTALL B: D:"
echo �             
echo NOTE: Make sure you use Disk 1 for the CGA version or Disk 2 for
echo the EGA/VGA version.
:END
