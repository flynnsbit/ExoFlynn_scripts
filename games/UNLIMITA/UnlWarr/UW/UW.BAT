@echo off
rem *** Spousteci davka pro Unlimited Warriors ***
rem Parametry pro command line:
rem   -gus            vystup na Gravis Ultrasound
rem   -sb16           vystup na Sound Blaster 16
rem   -sbpro          vystup na Sound Blaster Pro
rem   -sb             vystup na Plain Sound Blaster
rem   -nosound        beze zvuku
rem   -port nnn       adresa zvukove karty (napr. 220)
rem   -irq n          irq zvukove karty (napr. 7)
rem   -dma n          dma zvukove karty (napr. 1)
rem   (standardne je autodetekce, informace o portech, irq a dma
rem   si to bere z systemovych promennych BLASTER nebo ULTRASND)
rem   -debug          pokud hra pred prepnutim do grafiky zatuhava,
rem                   zkuste pro identifikaci chyby
rem   -nocache        vypne pouzivani dynamicke cache (vyuzije jen 7.5 Mb EMS)
rem   -modules        vypise verze pouzivanych modulu
D:\UW.EXE %1 %2 %3 %4 %5 %6 %7 %8 %9
