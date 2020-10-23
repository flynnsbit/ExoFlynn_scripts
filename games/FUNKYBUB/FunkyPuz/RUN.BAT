@echo off
if A%1==Ar call setup
if A%1==AR call setup
if exist MT-PUZZ.CFG goto game
call setup
:game
rmint
mt-puzz
unrmint
:end
