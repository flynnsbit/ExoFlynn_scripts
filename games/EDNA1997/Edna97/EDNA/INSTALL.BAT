@echo off
echo ������������������������������������������������������������������������������
echo � (c) 1997 by Black RAVEN ����������������������������������������������������
echo ������������������������������������������������������������������������������
echo ������������������������۲�-          -������۲..�����������������������������
echo ��������������������۲�-   .#���������۰.-����-   ����������������������������
echo ������������������۲-   -����������������# ���  ##-���������������������������
echo ������������������#  .��۲���������������# .۲ -��.���������������������������
echo �����������������-  #����#������������۲-  .۰ ��۰�������۲������������������
echo ����������������#          -�����ۺ#.     -��- ������������.##����������������
echo ��������������۲  .������������۲-    -������  ������������    .��������������
echo ��������������ۺ  #�������������������������� .������������--�- ��������������
echo ��������������۲  ��������������������۰.   . #۲--���۰.����۲ #�������������
echo ����������������- ��������������������- �۲-  �۰  �۰.  #۰ .�--�������������
echo ���������������۲..�����������������۰ ����ۺ-��-  �.��  ��  ��-��������������
echo ����������������۲- -����������ۺ����# -����۲��   ��۰  .�  ��.��������������
echo ������������������۲�-           .#�۲.  -#-.-�� .����. ���- .-#��������������
echo ��������������������������������������ۺ#..#��۲�����۰���۲�.�۲�������������
echo ������������������������������������������������������������������������������
echo ���������������������������������������������������������������� S i g n u m �
echo ������������������������������������������������������������������������������

if '%2' == ''  goto  help
mkdir %2 > nul
echo @echo off > %2\edna.bat
echo DRIVER.exe >> %2\edna.bat
echo INTRO.exe >> %2\edna.bat
echo edna.exe %2 >> %2\edna.bat
echo DRIVER.exe /U >> %2\edna.bat
if exist %2\edna.BAT goto suc
goto nsuc
:suc

%1
cd\

echo Instaluji program
copy /y %1\*.* %2 >nul

md %2\anims >nul

echo Instaluji animace
copy /y %1\anims\*.* %2\anims >nul
md %2\anims.two >nul
copy /y %1\anims.two\*.* %2\anims.two >nul
md %2\mezi >nul
copy /y %1\mezi\*.* %2\mezi >nul
md %2\intro >nul
copy /y %1\intro\*.* %2\intro >nul
md %2\masks >nul
echo Instaluji data
copy /y %1\masks\*.* %2\masks >nul
md %2\masks.two >nul
copy /y %1\masks.two\*.* %2\masks.two >nul
md %2\pics >nul
copy /y %1\pics\*.* %2\pics >nul
md %2\pics.two >nul
copy /y %1\pics.two\*.* %2\pics.two >nul

echo Instalace probehla uspesne
cd %2
goto end
:help
echo Instalace pouziti a priklad:   
echo         install.bat disk_odkud: disk:\adresar_kam_instalovat
echo         install.bat D: C:\Hry\Edna 
goto end
:nsuc
echo Instalace neprobehla uspesne
:end