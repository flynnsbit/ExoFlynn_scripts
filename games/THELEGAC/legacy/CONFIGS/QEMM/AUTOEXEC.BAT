rem 
rem example AUTOEXEC.BAT for Legacy using QEMM386
rem 
rem Replace the next line with your prefered path.
path c:\qemm;c:\windows;c:\dos;
rem 
rem Get the current working directory as the DOS prompt
prompt=$p$g
rem 
rem If not using DOS smartdrv.sys uncomment ONE of the following
rem disk cache lines. (Obviously you must already have whichever
rem one you chose!)
rem
rem Recent versions of these caches do NOT require to be loaded into
rem upper memory explicitly, they take care of themselves.
rem 
rem 1024K assumes at least 4MB of memory in your computer, 2MB machines
rem should use only 256K when playing legacy
rem
rem c:\norton\ncache ext=1024
rem c:\windows\smartdrv 1024
rem 
rem pckwik.ini options are described in the PCKwik manual.
rem c:\winmast\superpck /ConfigFile=c:\winmast\pckwik.ini
rem
rem Load a mouse driver high.
c:\qemm\loadhi /r:1 c:\dos\mouse.com
rem
rem load doskey to allow sensible command line editing
rem
@c:\qemm\loadhi /r:1 doskey
rem
rem load a UK keyboard driver, this line depends on your keyboard style
@c:\qemm\loadhi /r:1 keyb uk,,c:\dos\keyboard.sys
