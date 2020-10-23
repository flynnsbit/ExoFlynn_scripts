@echo off
set dos4gvm=maxmem#16384 swapmin#1024 virtualsize#12288 swapname#gene.swp
vic32 %1 %2 %3 %4
set dos4gvm=
