Echo - - - - -
findgraf >nul
erase findgraf.exe
if .%1 == .CGA  goto cga
if .%1 == .EGA  goto ega
if .%1 == .VGA  goto vga
if .%1 == .TGA  goto tga
if .%1 == .cga  goto cga
if .%1 == .ega  goto ega
if .%1 == .vga  goto vga
if .%1 == .tga  goto tga
if errorlevel 4 goto tga
if errorlevel 3 goto vga
if errorlevel 2 goto ega
if errorlevel 1 goto cga
Echo  Sorry !! You appear to have no graphics capability in your computer !!
Echo  This product requires CGA graphics at a minimum. Contact your dealer ...
goto abort
:cga
Echo Using CGA graphics ...
erase vga*.arc
erase tga*.arc
erase ega*.arc
pkxarc cga cga*.fnt >nul
goto continue
:ega
Echo Using EGA graphics ...
erase vga*.arc
erase tga*.arc
erase cga*.arc
pkxarc ega ega*.fnt >nul
goto continue
:vga
Echo Using VGA graphics ...
erase cga*.arc
erase tga*.arc
erase ega*.arc
pkxarc vga vga*.fnt >nul
goto continue
:tga
Echo Using Tandy graphics ...
erase vga*.arc
erase cga*.arc
erase ega*.arc
pkxarc tga tga*.fnt >nul
:Continue
erase *.arc
erase *.com
Echo - - - -
Echo The installation has been completed.  The product is now ready for operation.
Echo - - - -
Echo Using Disk 1:
Echo   If you have not already installed on your Hard Disk, type HDINSTALL.
Echo   To run this product, type RUN.
if .%2 == .D Echo Using Disk 2:
if .%1 == .D Echo Using Disk 2:
Echo   To configure a Joystick or Joystick Mouse, type CONFIG.
:ABORT
