@echo off
if exist sound.cfg goto startgame
setsound
:startgame
NEM C:\NEMESISW\sound.cfg
