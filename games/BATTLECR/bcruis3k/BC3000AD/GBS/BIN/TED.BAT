rem Syntax :  TED32 [/i] [/f<mode>] [/q<view>] [filename]
rem
rem /i suppress display of texture filenames on loading
rem
rem /f<mode>   mode =    18   -> 640x480x16
rem                      19   -> 320x200x256 ( normal mode 13h - 1 page )
rem                      20   -> 320x200x256 ( tweaked mode 13h - 4 pages )
rem                      22   -> 320x240x256
rem                      25   -> 640x480x256
rem                      26   -> 800x600x256
rem                      27   -> 1024x768x256 (default)
rem 
rem /q<view>   view =    1    -> Full screen Plan View
rem                      2    -> Full screen Side View
rem                      3    -> Full screen Front View
rem                      4    -> Full screen ISO View
rem
rem The OBJTEX environment indicates the object texture folder
rem The TEDWORK environment indicates where the TED.EXE file resides

set objtex=c:\bc3000ad\gbs\objtex
set tedwork=c:\bc3000ad\gbs\bin

ted /i /f27
