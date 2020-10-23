@ECHO OFF
FOR %%i in (credits.txt Reach.EXE CONTROL.EXE) do COPY %1:%%i . >NUL
copy	%1:??MUSIC.DRV . >NUL
FOR %%i in (PHOTO__.SER BoBShp.COM BoBWrld.COM HI-SCRXG.PLB HI-SCRXB.PLB) do COPY %1:%%i . >NUL
FOR %%i in (BlnkPlay.PLB ju87.com dornier.com heinkel.com ju88.com roadnet.bin) do COPY %1:%%i . >NUL
FOR %%i in (rivrnet.bin railnet.bin manyvocs.big manytims.big Dive.VOC SpitEng.voc) do COPY %1:%%i .  >NUL
FOR %%i in (Ju88Eng.voc StukDive.VOC RumbleNG.VOC SpitFire.VOC UnderAtt.VOC) do COPY %1:%%i . >NUL
FOR %%i in (GrmnEnga.VOC WCTalk2.voc ZiegHiel.voc AllClear.VOC MerStart.VOC) do COPY %1:%%i . >NUL
FOR %%i in (TIDY.BAT TIDY_UPV.BAT TIDY_UPP.BAT TIDY_UPH.BAT TIDY_UPD.BAT TIDY_UPA.BAT) do COPY %1:%%i . >NUL
