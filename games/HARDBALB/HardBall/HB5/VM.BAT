@echo off

rem ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
rem ³
rem ³  Notes about the DOS4GVM environment variable
rem ³
rem ³  The DOS4GVM environment variable is used to control the virtual
rem ³  memory features for HardBall 5.  There are a number of parameters
rem ³  the experienced computer user can adjust to tune VM for their
rem ³  computer system:
rem ³
rem ³  VirtualSize#7000      Sets the size of the virtual address space to
rem ³                        7000K.  Do _not_ decrease this number or
rem ³                        HardBall 5 will not work properly.
rem ³
rem ³                        Note that a '#' character is used in place of
rem ³                        an '=' character because command.com won't let
rem ³                        you put an '=' in an environment variable.
rem ³
rem ³  NoDeleteSwap          If you specify this option, the swap file will
rem ³                        not be deleted when the game exits.  The default
rem ³                        is to delete the swap file when the game exits.
rem ³
rem ³  SwapName#VirtMem.SWP  Sets the swap file name to "VirtMem.SWP".  You
rem ³                        can put the swap file on other partitions by
rem ³                        specifying a full pathname, such as:
rem ³                           SwapName#D:\Temp\VirtMem.SWP
rem ³
rem ³                        Swap files should not be put on compressed
rem ³                        drives (e.g. with DoubleSpace or Stacker)
rem ³                        because the disk access time might be too slow.
rem ³                        Other than being slower, it should work fine.
rem ³
rem ³  SwapInc#0             Causes space for the entire swap file to be
rem ³                        reserved when the program first boots.  This is
rem ³                        important to prevent the game from running out
rem ³                        of memory during game play.
rem ³
rem ³  To disable virtual memory, simply clear the DOS4GVM environment
rem ³  variable with the command "SET DOS4GVM=".
rem ³
rem ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

if "%1"=="off" goto turnoff
if "%1"=="OFF" goto turnoff
if "%1"=="Off" goto turnoff

set DOS4Gvm=VirtualSize#7000 SwapInc#0 SwapName#%1VirtMem.SWP
echo Virtual memory for HardBall 5 has been enabled.
echo The swap file will be called "%1VirtMem.SWP"
goto done

:turnoff
set DOS4Gvm=
echo Virtual memory for HardBall 5 has been disabled.

:done

