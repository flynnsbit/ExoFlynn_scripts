echo off
cls
echo Installing ATOMINO
if %1 . == . goto falsch
md %1:atomino
copy *.* %1:atomino
goto richtig
:falsch 
echo Please specify drive to install ATOMINO
echo e.g. INSTALL C
:richtig
