echo off
cls
echo   +-----------------------------------------------------+
echo   I              EPYX Hard disk installer               I
echo   I              for  PROJECT NEPTUNE                   I
echo   +-----------------------------------------------------+
echo   I This will create the directory :                    I
echo   I                                                     I
echo   I                  C:\NEPTUNE                         I
echo   I                                                     I
echo   I If this directory does not exist, it will be        I
echo   I created.                                            I
echo   I                                                     I
echo   I It will copy all the files to this directory.       I
echo   I                                                     I
echo   I To cancel the installation, press CTRL-C now.       I
echo   +-----------------------------------------------------+
pause
verify on
c:
cd \
mkdir NEPTUNE
cd NEPTUNE
cls
copy a:*.*
cls
echo   +------------------------------------------------------+
echo   I                                                      I
echo   I Please insert disk 2 in drive A: and press a key.    I
echo   I                                                      I
echo   +------------------------------------------------------+
pause
cls
copy a:*.*
cls
echo   +------------------------------------------------------+
echo   I                                                      I
echo   I                 Installation complete                I
echo   I                                                      I
echo   +------------------------------------------------------+
pause
cls
