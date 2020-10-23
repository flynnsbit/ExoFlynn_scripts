echo off
echo Hard Drive installation program for Once Upon A Time... Puppet Playhouse
echo
echo This program will install Once Upon A Time... Puppet Playhouse on to
echo your hard drive in its own subdirectory.  The process will take several
echo minutes.  If you wish to cancel this installation, press CTRL-C now.
echo Otherwise, press any key to continue.
Pause
echo Creating directory
%1:
cd \
md puppet
cd puppet
copy a:*.* %1:\puppet\*.*
echo Please insert disk 2.
Pause
copy a:*.* %1:\puppet\*.*
echo Installation complete on drive %1!
echo Type Puppet and press ENTER to run the program.
