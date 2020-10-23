echo off
cls
echo   
echo  Insert the MINDSCAPE disk when
echo  the system asks for drive A and
echo  insert the DOS disk when the
echo  system asks for drive B.
echo    
pause
b:
sys a:
echo     
copy command.com a:
echo   
a:
echo  Your MINDSCAPE disk is now ready.
