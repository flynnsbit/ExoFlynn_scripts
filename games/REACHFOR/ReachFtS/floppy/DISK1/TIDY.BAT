@ECHO OFF
IF EXIST TIDY_UP%1.bat TIDY_UP%1 %2
ECHO 	Syntax:	TIDY category
ECHO 	I don't know how to tidy up category %1
IF "%1" == "" ECHO 	because no category was actually given as a parameter!
ECHO 	This command tidies your REACH for the SKIES directory by deleting 
ECHO 	categories of files.
ECHO 	The following categories can be tidied with this command:
ECHO 	CATEGORY			FILENAMES
ECHO 	~~~~~~~~			~~~~~~~~~
ECHO 	VIDEOS:			V_*.SEQ 		-Quantity and sizes vary
ECHO 	PHOTOS:			PHOTO_?.SEQ and PH256_?.SEQ -up to 26 -up to 64K
ECHO 	PLAYER RECORDS/HISCORE:	*.PLY 			-up to 22 files -1K each
ECHO 	DEMO/INTRO SEQUENCE:	not all *.SE?, a few other files      -1MB total
ECHO 	ALL:			All these categories
ECHO 	~~~
ECHO 	Only the first letter of the category needs to be entered,
ECHO 	E.G. TIDY V will remove all videos
ECHO 	The files to be deleted are listed and you can cancel the process
ECHO 	at this point before the delete takes place.
ECHO	You may also specify a directory name to which the deleted files
ECHO	sholud be copied. This copying will occur BEFORE you are asked wether
ECHO	to delete the files. The directory must already exist.
