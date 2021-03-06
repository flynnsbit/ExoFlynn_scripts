@echo off

rem 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
rem �
rem �  Notes about the DOS4GVM environment variable
rem �
rem �  The DOS4GVM environment variable is used to control the virtual
rem �  memory features for HardBall 4.  There are a number of parameters
rem �  the experienced computer user can adjust to tune VM for their
rem �  computer system:
rem �
rem �  VirtualSize#5600      Sets the size of the virtual address space to
rem �                        5600K.  Do _not_ decrease this number or
rem �                        HardBall 4 will not work properly.
rem �
rem �                        Note that a '#' character is used in place of
rem �                        an '=' character because command.com won't let
rem �                        you put an '=' in an environment variable.
rem �
rem �  NoDeleteSwap          If you specify this option, the swap file will
rem �                        not be deleted when the game exits.  The default
rem �                        is to delete the swap file when the game exits.
rem �
rem �  SwapName#VirtMem.SWP  Sets the swap file name to "VirtMem.SWP".  You
rem �                        can put the swap file on other partitions by
rem �                        specifying a full pathname, such as:
rem �                           SwapName#D:\Temp\VirtMem.SWP
rem �
rem �                        Swap files should not be put on compressed
rem �                        drives (e.g. with DoubleSpace or Stacker)
rem �                        because the disk access time might be too slow.
rem �                        Other than being slower, it should work fine.
rem �
rem �  SwapInc#0             Causes space for the entire swap file to be
rem �                        reserved when the program first boots.  This is
rem �                        important to prevent the game from running out
rem �                        of memory during game play.
rem �
rem �  To disable virtual memory, simply clear the DOS4GVM environment
rem �  variable with the command "SET DOS4GVM=".
rem �
rem 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�

if "%1"=="off" goto turnoff
if "%1"=="OFF" goto turnoff
if "%1"=="Off" goto turnoff

set DOS4Gvm=VirtualSize#5600 SwapInc#0 SwapName#%1VirtMem.SWP
echo Virtual memory for HardBall 4 has been enabled.
echo The swap file will be called "%1VirtMem.SWP"
goto done

:turnoff
set DOS4Gvm=
echo Virtual memory for HardBall 4 has been disabled.

:done

