@echo off

:MAKEBOOTDISK
cls
echo              浜様様様様様様様様様様様様様様様様様様様様様様様様様融
echo              �                QFG Boot Disk Maker                 �
echo              把陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳超
echo              �    Press the appropriate letter to make the boot   �
echo              �                disk of your choice.                �
echo              �                                                    �
echo              �         A.   QFG 1 / 2 / 3 boot disk               �
echo              �         B.   QFG 4 boot disk                       �
echo              �                                                    �
echo              �          Press C to quit the boot disk maker       �
echo              藩様様様様様様様様様様様様様様様様様様様様様様様様様夕
echo.

what c "Enter a letter > " abcx

if not exist c:\what.exe copy what.exe c:\
if "%what%" == "A" goto QG123BD
if "%what%" == "B" goto QG4BD
if "%what%" == "C" goto EXIT
if "%what%" == "" goto EXIT

:QG123BD
cls
bootdisk -w -rwin
pause
goto EXIT

:QG4BD
cls
bootdisk -c -w -rwin
pause
goto EXIT

:EXIT
echo.
