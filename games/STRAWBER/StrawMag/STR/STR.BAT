@echo off
set dos4g=quiet
mode con codepage prepare=((437) EGA.CPI) > NUL
mode con codepage prepare=((850) EGA.CPI) > NUL
ADVENT -L0 -gSTR %1 %2 %3