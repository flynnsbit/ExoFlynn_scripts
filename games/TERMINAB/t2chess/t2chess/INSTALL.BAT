@echo off
decomp
if errorlevel 1 goto end
@echo on
@echo moving files to sub directories....
@echo off

copy i*.flc flcs > nul
del i*.flc
copy a*.flc flcs > nul
del a*.flc
copy d*.flc flcs > nul
del d*.flc
copy o*.flc flcs > nul
del o*.flc
copy *.flc flcs	> nul
del *.flc
copy *.pcx pcx > nul
del *.pcx
copy *.sga pcx > nul
del *.sga
copy *.vga pcx > nul
del *.vga
copy *.snd snd > nul
del *.snd
copy *.xmi snd > nul
del *.xmi
copy *.adv snd > nul
del *.adv
copy *.ad  snd > nul
del *.ad
copy dbis.img walks > nul
copy dpawf.img walks > nul
copy lpawb.img walks > nul

del dbis.img
del dpawf.img
del lpawb.img

@echo on
@echo Type T2CHESS to run the program with the introduction.
@echo Type T2 to run the program without the imtroduction.
:end  
