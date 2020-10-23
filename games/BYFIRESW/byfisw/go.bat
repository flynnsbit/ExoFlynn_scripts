echo off
cls
if exist manual*.* dir manual*.* /w
if exist *.man dir *.man /w
if exist *.txt dir *.txt /w
if exist *.doc dir *.doc /w
if exist read*.* dir read*.* /w
echo    *** THE FILES ABOVE ARE DOCUMENTATION ****
echo    YOU'LL FIND THE DOCUMENTATION FOR THIS DISK STORED IN FILE FORM.
echo    .
echo    Use the directory command DIR to get the file names: when you look at   
echo    the filenames you'll see that some have .DOC or .TXT extensions or they
echo    have names like readme.txt or readme or read.me.  These are your docu-
echo    mentation files.  To display the text on the screen, use the DOS type
echo    command.     THE PROPER FORMAT FOR THE TYPE COMMAND IS:                 
echo           TYPE FILENAME.EXT (RETURN)                                 
echo    USING THE ACTUAL FILE NAME, FULL EXTENSION AND NO SPACES        
echo  *** you may stop and start the text scrolling by holding down the control
echo    button and pressing S to stop and S to start.
echo    Alternately, you can print the documentation by entering 
echo           COPY FILENAME.EXT PRN (RETURN)
echo .           
echo ÿ
pause
cls
if exist *.bat dir *.bat /w
if exist *.exe dir *.exe /w
if exist *.com dir *.com /w
echo ÿ
echo      THE ABOVE FILES ARE EXECUTABLE THROUGH DOS            
echo    WE ADVISE THAT YOU READ ALL DOCUMENTATION BEFORE EXECUTING ANYTHING
echo .
echo    The computer looks for BAT, EXE, and then COM files.              
echo    Usually the main file which starts things off has a name similar to   
echo    the name of the program.  You start it all off by typing the program
echo    name (without the extension) at the DOS prompt:   
echo        EXAMPLE:     ASTROLOG  (RETURN) 
echo    Is the proper way to execute the astrology program which has the 
echo    executable file ASTROLOG.EXE.                               
echo  .  
echo ** IT IS WELL ADVISED TO VIEW THE CONTENTS OF BATCH FILES BEFORE STARTING
echo    To do so, use the dos TYPE command as you did with document files.
echo  .
pause
cls
if exist *.bas dir *.bas
echo ÿ
echo    ANY FILES IN BASIC ARE LISTED ABOVE             
echo    If the file has the .BAS extension, you must first bring up basic to 
echo    run the program.  Insert the disk with basic in the A drive and execute
echo    your basic with the proper command:
echo          GWBASIC (RETURN)
echo    Once you have the basic screen on your monitor, you'll need the 
echo    following commands to run the program.
echo        FILES  (RETURN)     - is the directory command
echo        LOAD"FILENAME       - loads a file into memory to be run (use the
echo                              actual file name of the main file)
echo        RUN                 - executes the program now loaded into memory
echo .
echo .
pause
cls
echo                        SHAREWARE
echo  Shareware programs are copyrighted by their authors as noted in the 
echo  documentation supplied with each program.  Please refer to the author's
echo  restrictions in regards to copying or altering any files supplied with
echo  the program.
