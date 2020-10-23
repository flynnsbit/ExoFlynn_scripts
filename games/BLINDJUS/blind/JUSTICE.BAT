@echo off

rem *** Blind Justice Startup Batch file ***

SET DOS4GPATH=..
 DATA\GENCHECK 2 1400 
   if errorlevel 1 goto :need14meg
SET DOS4G=QUIET
  DATA\GENCHECK 1 4300
   if errorlevel 1 goto :initvmm

:return
      set DOS4GPATH=
      BEGIN.EXE 1 0 1
      if errorlevel 9 GAME.EXE 1 0 1
      CALL DATA\VMR.BAT OFF
      goto :end

:initvmm
      DATA\GENCHECK 2 5400
      if errorlevel 1 goto :novmminit
      CALL DATA\VMR.BAT
      goto :return

:novmminit
      echo ÿ
      echo Cannot initialize the virtual memory manager. Please make sure that
      echo 5.4 megabytes of disk space is free.
      goto :end

:need14meg
      echo ÿ
      echo Insufficient disk space. Blind Justice requires that 1.4 megabytes of
      echo disk space be available during game play. For tips on freeing up memory,
      echo please consult the game manuals.
      goto :end

:end
      set dos4g=
      echo ...and you return to the real world.
      echo ÿ

