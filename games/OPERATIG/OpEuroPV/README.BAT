@echo off
cls
echo.
echo   ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo   บ                                                                          บ
echo   บ  If BOOTDISK did not create a boot disk properly, there is a simple way  บ 
echo   บ  for you to create one from the DOS prompt.                              บ
echo   บ                                                                          บ
echo   บ  1. Insert a blank, formatted or unformated 1.44MB 3.5" or 1.2 MB 5.25"  บ
echo   บ     disk into Drive A (floppy drive)                                     บ
echo   บ                                                                          บ
echo   บ  2. At the DOS prompt, type FORMAT A: /S then press ENTER. This will     บ
echo   บ     format the disk in Drive A and copy the system files needed by DOS   บ
echo   บ     to start the computer.                                               บ
echo   บ                                                                          บ
echo   บ  3. Next you must create AUTOEXEC.BAT and CONFIG.SYS files for your boot บ
echo   บ     disk. Leave the newly formatted disk in Drive A and type the         บ
echo   บ     following at the DOS prompt.                                         บ
echo   บ                                                                          บ
echo   ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause
cls
echo.
echo   ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo   บ                                                                          บ
echo   บ  [To make AUTOEXEC.BAT]                                                  บ
echo   บ                                                                          บ
echo   บ        COPY CON A:\AUTOEXEC.BAT    Press ENTER                           บ
echo   บ        ECHO OFF                    Press ENTER                           บ
echo   บ        PROMPT $P$G                 Press ENTER                           บ
echo   บ        PATH C:\;C:\DOS             Press ENTER                           บ
echo   บ                                                                          บ
echo   บ     Press F6 on your keyboard, then press ENTER. This will create a      บ
echo   บ     basic AUTOEXEC.BAT file on your boot disk.                           บ
echo   บ                                                                          บ
echo   ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo. 
pause
cls
echo.
echo   ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo   บ                                                                          บ
echo   บ  [To make CONFIG.SYS]                                                    บ
echo   บ                                                                          บ
echo   บ        COPY CON A:\CONFIG.SYS          Press ENTER                       บ
echo   บ        DEVICE=C:\DOS\HIMEM.SYS         Press ENTER                       บ
echo   บ        DEVICE=C:\DOS\EMM386.EXE RAM    Press ENTER                       บ
echo   บ        DOS=HIGH                        Press ENTER                       บ
echo   บ        FILES=40                        Press ENTER                       บ
echo   บ                                                                          บ
echo   บ     Press F6 on your keyboard, then press ENTER. This will create a      บ
echo   บ     basic CONFIG.SYS file on your boot disk.                             บ
echo   บ                                                                          บ
echo   ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo. 
pause
cls
echo.
echo   ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo   บ                                                                          บ
echo   บ  If you have renamed your DOS directory, then please change the previous บ
echo   บ  lines to correspond to the name of the directory that holds your DOS    บ
echo   บ  files.                                                                  บ
echo   บ                                                                          บ
echo   บ  Example:      Change DEVICE=C:\DOS\HIMEM.SYS to                         บ
echo   บ                       DEVICE=C:\[DOS directory]\HIMEM.SYS                บ
echo   บ                                                                          บ
echo   ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo END.
echo on
