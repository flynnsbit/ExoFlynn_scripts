  @echo off
  cls
  echo Language selector for ELF
  if "%1"=="" goto error
  if exist TEXT*.HUF del TEXT*.HUF
  if exist DGME*.HUF del DGME*.HUF
  if exist DESCLV*.HUF del DESCLV*.HUF
  copy %1.raz textspn.huf
  copy %1.dgm dgmespn.huf
  copy %1.dl1 desclv1s.huf
  copy %1.dl2 desclv2s.huf
  copy %1.dl3 desclv3s.huf
  copy %1.dl4 desclv4s.huf
  copy %1.dl5 desclv5s.huf
  copy %1.dl6 desclv6s.huf
  copy %1.dl7 desclv7s.huf
  copy %1.dl8 desclv8s.huf
  elf
  goto the_end
  :error
  echo.
  echo Usage: LANGUAGE N
  echo.
  echo Where N is a number from 1 to 4
  echo     1=English
  echo     2=French
  echo     3=Spanish
  echo     4=German
  :the_end
  echo.

