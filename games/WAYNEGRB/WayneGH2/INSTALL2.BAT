
cls
:disk2
echo Please insert Disk 2 in Drive %1
pause
echo 
if exist %1\data\xcheck.seq goto Copy2
goto disk2

:Copy2
echo Copying Disk 2 files to %2\WGHII...
copy %1\data\*.* %2\WGHII\data > NUL

if not exist %2\WGHII\data\xcheck.seq goto InstallError

cls
echo 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo �                                                                 �
echo �  "Wayne Gretzky Hockey II" has been successfully installed onto �
echo �  your hard disk.                                                �
echo �                                                                 �
echo �  To run "Wayne Gretzky Hockey II", at your %2\WGHII prompt      �
echo �  type                        HOCKEY                             �
echo �                                                                 �
echo 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
goto End

:InstallError
echo ERROR:  Installation of "Wayne Gretzky Hockey II" into %2\WGHII was unsuccessful.
echo         This might be because your hard disk is full.
:End
echo 
