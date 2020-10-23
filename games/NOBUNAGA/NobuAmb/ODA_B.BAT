echo off
cls
if %1. == . goto error 
echo  *********************************************************************
echo  *                                                                   *
echo  *      This batch file installs program and data files from disk  B *
echo  * of Nobunaga's Ambition to a hard disk of your choice.             *
echo  *      To  terminate transfer and return to DOS press  the  Control *
echo  * and C keys simultaneously.                                        *
echo  *                                                                   *
pause 											

echo  *                                                                   *
echo  * Starting installation.                                            *

echo  *                                                                   *
echo  * Just a moment, please.                                            *
md %1:\oda_b
copy a:*.dat %1:\oda_b /v > nul   
exist %1:\oda_b\s2.dat
if errorlevel 1 goto error
echo  *                                                                   *
echo  * Complete !!                                                       *
echo  *                                                                   *
echo  *********************************************************************
goto end
:error
cls
echo  *********************************************************************
echo  *                                                                   *
echo  *      To  install disk B of Nobunaga's Ambition to your hard  disk *
echo  * you need to correctly specify the hard disk's name.               *
echo  *                                                                   *
echo  *      For example, if your hard disk were C you would type         *
echo  *                                                                   *
echo  *       ODA_B C                                                     *
echo  *                                                                   *
echo  *      Please try again.                                            *
echo  *                                                                   *
echo  *********************************************************************
:end
