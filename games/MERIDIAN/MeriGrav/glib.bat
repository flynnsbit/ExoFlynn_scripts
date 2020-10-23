echo off
copy %1g.asm g.asm > nul
copy %1g2.h g2.h > nul
del mg.obj
del g.obj
:end
