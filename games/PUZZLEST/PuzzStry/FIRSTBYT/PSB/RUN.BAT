Echo off
Echo (C)Copyright First Byte Corporation 1988-1989.
Echo - - - - -     
if exist SPEECH.EXE goto L1
Echo Please INSTALL this product before executing ...
pause
goto ABORT
:L1
speech
metawndow
if exist dino.exe goto single
Echo - - - - 
Echo Place Disk 2 in this Drive and
for %%h in (pause dino) do %%h %1 psb
goto done
:single
dino %1 psb
:done
metawndow /k
freedr
:ABORT
