@echo off
fphd 1
if errorlevel == 30 goto end
fpint 0
fphd 0  /C 1 3 70
fpint 1
lonexe /SF /V0 /W1
fphd 2 /C 1 4 300
:end
