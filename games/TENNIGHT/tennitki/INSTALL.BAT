echo off
md %2\tno
cd %2\tno
pkunzip %1\*.zip %2
echo "Please insert disk #2 and hit a key..."
pause
md %2\tno\soundstuff
cd %2\tno\soundstuff
pkunzip %1\*.zip %2
%2
echo "Set up sound drivers before playing..."
