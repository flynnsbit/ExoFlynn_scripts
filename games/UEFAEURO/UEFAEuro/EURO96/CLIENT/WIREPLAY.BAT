@echo off
if exist $$*.img del $$*.img
if exist $$*.htm del $$*.htm
if exist   *.old del   *.old
if exist   *.dnl del   *.dnl
animate -
set DOS4G=quiet
set DOS4GVM=@WIREPLAY.VMC
stub client
set DOS4G=
mode co80
