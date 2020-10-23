echo off
echo           *******************************************
echo           **                                       **
echo           **     Spell It Plus Remove Program      **
echo           **                                       **
echo           *******************************************

:doit
erase %1\*.dat
erase %1\*.com
erase %1\mtk*.* 
erase %1\three5
erase %1\*.obj
erase %1\*.ovl
erase %1\*.exe
erase %1\*.bat
erase %1\*.drv
erase %1\data\champion.*
erase %1\data\grand.*
erase %1\data\advanced.*
erase %1\data\novice.*
erase %1\data\inter.*
rd    %1\data
erase %1\junior\list.*
rd    %1\junior
erase %1\cga\*.pak
erase %1\cga\*.gr
rd    %1\cga
erase %1\ega\*.pak
erase %1\ega\*.gr
rd    %1\ega

:done
cd %1\..
rd %1
echo           **********************************************
echo           **          Spell It Plus has been          **
echo           ** successfully removed from your hard disk **
echo           **********************************************

:theend

