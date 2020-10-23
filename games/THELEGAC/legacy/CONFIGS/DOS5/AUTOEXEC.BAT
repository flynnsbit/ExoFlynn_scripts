rem Please replace with your path of preference.
path c:\dos;c:\myprogs
rem Get DOS to use the current working directory as a prompt
prompt=$p$g
rem If your mouse driver is NOT a '.SYS' file load it here.
rem Some really argue about being loaded high and most are quite big,
rem so it is better to load it high than a smaller TSR such as doskey
rem - we loaded one in config.sys so skip it anyway!
rem lh c:\windows\mouse
rem this is completely optional, but useful
lh doskey
