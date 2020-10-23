@echo off
set dos4gvm=@dime.vmc
if exist dime.swp del dime.swp
dos4gw dime.cde
if exist dime.swp del dime.swp
set dos4gvm=
