@Echo Off
rem *******************************************************
rem *      COPYRIGHT (C)1996 Digital Workshop Ltd         *
rem *******************************************************
rem batch file to run "Back To Baghdad" 
rem 
SET B2BTEMPVM=%DOS4GVM%
SET DOS4GVM=@NEW4G.VMC
rem  
rem  
set DOS4G=quiet 
chdir D:\b2b 
chdir c:\msif16 
 
call game @b2b.cfg show_brief 
 
if errorlevel 41 goto nucxit  
if errorlevel 40 goto geoxit  
  
if errorlevel 11 goto nucrst 
if errorlevel 10 goto georst 
  
if errorlevel  3 goto skip  
if errorlevel  2 goto intro 
goto end 
 
 
:skip 
call game @b2b.cfg skip_intro 
 
if errorlevel 41 goto nucxit  
if errorlevel 40 goto geoxit  
  
if errorlevel 11 goto nucrst 
if errorlevel 10 goto georst 
  
if errorlevel  3 goto skip  
if errorlevel  2 goto intro 
goto end 
 
 
:nucxit   
call D:\b2b\fmv\play /quiet /square  D:\b2b\fmv\sad3.avi 
call D:\b2b\fmv\play /quiet /square  D:\b2b\fmv\nuka.avi
goto end  
   
:geoxit   
rem call D:\b2b\fmv\play /quiet /square  D:\b2b\fmv\george.avi
goto end 
             
:nucrst  
call D:\b2b\fmv\play /quiet /square  D:\b2b\fmv\sad3.avi 
call D:\b2b\fmv\play /quiet /square  D:\b2b\fmv\nuka.avi
goto skip
 
:georst 
rem call D:\b2b\fmv\play /quiet /square  D:\b2b\fmv\george.avi 
goto skip
     
:intro  
rem     
rem fmv for entry to main game then start again,      
rem this time, skipping intro 
rem 
call D:\b2b\fmv\play /quiet /square  D:\b2b\fmv\intro.avi 
call  game @b2b.cfg skip_intro show_brief 
   
 
if errorlevel 41 goto nucxit  
if errorlevel 40 goto geoxit  
  
if errorlevel 11 goto nucrst 
if errorlevel 10 goto georst 
  
if errorlevel  3 goto skip  
if errorlevel  2 goto intro 
goto end 
 
         
    
:end 
SET DOS4GVM=%B2BTEMPVM% 
SET B2BTEMPVM= 
