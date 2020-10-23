@echo off

:MAKEBOOTDISK
cls
echo              ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo              º                QFG Boot Disk Maker                 º
echo              ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶
echo              º    Press the appropriate letter to make the boot   º
echo              º                disk of your choice.                º
echo              º                                                    º
echo              º         A.   QFG 1 / 2 / 3 boot disk               º
echo              º         B.   QFG 4 boot disk                       º
echo              º                                                    º
echo              º          Press C to quit the boot disk maker       º
echo              ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
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
