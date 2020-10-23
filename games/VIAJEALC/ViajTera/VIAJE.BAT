ECHO OFF
:REP
CLS
ECHO ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO บ                           VIAJE AL CENTRO DE LA TIERRA                      บ
ECHO ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.       
ECHO.                      
ECHO.   
ECHO.  
ECHO.   
ECHO.    
ECHO.    
ECHO Selecciona el modo de video:
ECHO.
ECHO                                   1-CGA
ECHO                                   2-EGA/VGA
ECHO.           
ECHO.     
ECHO.   
ECHO.    
ECHO.      
ECHO                                  (C) TOPO Soft
INKEY
IF ERRORLEVEL 50 GOTO EGA
IF ERRORLEVEL 49 GOTO CGA
GOTO REP
:CGA
CLS
MENUCGA
:EGA
CLS
MENUEGA

