echo on
:
: Batch file to copy Defender of the Crown floppy(s) to hard disk
:
pause *** Subdirectory DCROWN will be created on your hard disk ***
:
: Creating directory dcrown
:
mkdir %1\dcrown
:
: Creating directory dcrown\exe
:
mkdir %1\dcrown\exe
:
: Creating directory dcrown\run
:
mkdir %1\dcrown\run
:
: Creating directory dcrown\journal
:
mkdir %1\dcrown\journal
:
: Creating directory dcrown\demo
:
mkdir %1\dcrown\demo
:
: Copying files from floppy to hard disk
:
copy exe %1\dcrown\exe
copy dcrown %1\dcrown
copy *.* %1\dcrown\run
copy journal %1\dcrown\journal
copy demo %1\dcrown\demo
:
echo on
:
: Defender of the Crown for CD-ROM is now installed on your hard disk
:
: Run the program DOCPARMS in the directory DCROWN\RUN to complete
: installation
:
echo off
