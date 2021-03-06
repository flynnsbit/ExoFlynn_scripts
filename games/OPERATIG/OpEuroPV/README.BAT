@echo off
cls
echo.
echo   浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
echo   �                                                                          �
echo   �  If BOOTDISK did not create a boot disk properly, there is a simple way  � 
echo   �  for you to create one from the DOS prompt.                              �
echo   �                                                                          �
echo   �  1. Insert a blank, formatted or unformated 1.44MB 3.5" or 1.2 MB 5.25"  �
echo   �     disk into Drive A (floppy drive)                                     �
echo   �                                                                          �
echo   �  2. At the DOS prompt, type FORMAT A: /S then press ENTER. This will     �
echo   �     format the disk in Drive A and copy the system files needed by DOS   �
echo   �     to start the computer.                                               �
echo   �                                                                          �
echo   �  3. Next you must create AUTOEXEC.BAT and CONFIG.SYS files for your boot �
echo   �     disk. Leave the newly formatted disk in Drive A and type the         �
echo   �     following at the DOS prompt.                                         �
echo   �                                                                          �
echo   藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
echo.
pause
cls
echo.
echo   浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
echo   �                                                                          �
echo   �  [To make AUTOEXEC.BAT]                                                  �
echo   �                                                                          �
echo   �        COPY CON A:\AUTOEXEC.BAT    Press ENTER                           �
echo   �        ECHO OFF                    Press ENTER                           �
echo   �        PROMPT $P$G                 Press ENTER                           �
echo   �        PATH C:\;C:\DOS             Press ENTER                           �
echo   �                                                                          �
echo   �     Press F6 on your keyboard, then press ENTER. This will create a      �
echo   �     basic AUTOEXEC.BAT file on your boot disk.                           �
echo   �                                                                          �
echo   藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
echo. 
pause
cls
echo.
echo   浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
echo   �                                                                          �
echo   �  [To make CONFIG.SYS]                                                    �
echo   �                                                                          �
echo   �        COPY CON A:\CONFIG.SYS          Press ENTER                       �
echo   �        DEVICE=C:\DOS\HIMEM.SYS         Press ENTER                       �
echo   �        DEVICE=C:\DOS\EMM386.EXE RAM    Press ENTER                       �
echo   �        DOS=HIGH                        Press ENTER                       �
echo   �        FILES=40                        Press ENTER                       �
echo   �                                                                          �
echo   �     Press F6 on your keyboard, then press ENTER. This will create a      �
echo   �     basic CONFIG.SYS file on your boot disk.                             �
echo   �                                                                          �
echo   藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
echo. 
pause
cls
echo.
echo   浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
echo   �                                                                          �
echo   �  If you have renamed your DOS directory, then please change the previous �
echo   �  lines to correspond to the name of the directory that holds your DOS    �
echo   �  files.                                                                  �
echo   �                                                                          �
echo   �  Example:      Change DEVICE=C:\DOS\HIMEM.SYS to                         �
echo   �                       DEVICE=C:\[DOS directory]\HIMEM.SYS                �
echo   �                                                                          �
echo   藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
echo.
echo END.
echo on
