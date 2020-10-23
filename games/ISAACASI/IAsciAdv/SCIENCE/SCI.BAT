@echo off
moustest
if errorlevel 1 goto nomouse
    
    kav
    goto end

:nomouse    
   mouse > nul
   kav
   mouse /u >nul


:end

