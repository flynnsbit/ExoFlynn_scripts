echo off
cd \
if not exist conpcjr.exe goto error
sys b:
copy command.com b:
copy conpcjr.exe b:
copy b:jrteccon.sys b:config.sys
echo Now your disk is ready to use.
goto end
:error
echo You must use a DOS disk which is
echo modified for 256k.  Refer to
echo instructions provided with your
echo memory expansion module.
:end
