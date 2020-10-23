@echo off
echo ÿGREAT NAVAL BATTLES VOL.2  GUADALCANAL 1942-43
echo ÿ
echo ÿversion 1.0 3/21/94
echo ÿ
echo ÿThe contents of this file, in order, include:
echo ÿ	- Game Clarifications and Additions
echo ÿ	- Game Hints
echo ÿ	- Additional Questions and Answers
echo ÿ	- Additional Technical Information
echo ÿ		- Vesa Drivers
echo ÿ		- Game Memory
echo ÿ		- Summary of New Command Keys
echo ÿ	- Directory of Ship Classes     
echo ÿ
echo ÿ
echo ÿ
echo ÿGAME CLARIFICATIONS AND ADDITIONS
echo ÿ
echo ÿ
echo ÿGENERAL
echo ÿ
echo ÿ1) If you experience a game crash,  reload your most recent save, 
echo ÿgo to the Memory Report in the Controls menu located at the top 
pause
echo ÿmenu bar, and record the numbers found there before calling 
echo ÿSSI technical support.  These numbers will show the amount of free 
echo ÿmemory and will be a big help to tech. support.
echo ÿ
echo ÿ2) IMPORTANT: Your game may slow down if you have too many map 
echo ÿfilters on. Filters like range circles or torpedoes will slow down 
echo ÿthe game, so turn them off to speed up the game.
echo ÿ
echo ÿ3) We have included Gravis native modein the sound install menu as a 
echo ÿcourtesy to our users. We do not gurantee 100% compatibility because 
echo ÿout testing revealed some intermittent problems.If you have problems 
echo ÿusing this card in its native mode, we suggest that you use the 
echo ÿSound Blaster emulation option in the sound install menu.
echo ÿ
echo ÿ4) Currently in the game, computer will occassionally plot to close 
echo ÿto land and may run some ships aground.  If you wish you can edit
echo ÿthe GNB.bat file with your DOS editor and add the following command.
echo ÿTowards the end of the file look for the following:
echo ÿ
echo ÿgnbg.exe vesa480.dll
echo ÿ
echo ÿalter this command line to look like this:
echo ÿ
pause
echo ÿgnbg.exe vesa480.dll AGROUND
echo ÿ
echo ÿThis allow ships to ignore portions of land while the task force
echo ÿmoves. You still cannot plot thru islands but this will allow
echo ÿyou to clip a corner or two.
echo ÿ
echo ÿ4) If you manually plot the course for a bombard mission you must
echo ÿtarget the appropriate "X" in the waters off Guadalcanal.  The 
echo ÿJapanese must target the blue (American) "X" and the Americans
echo ÿmust target the red (Japanese) "X".  Likewise when you manually 
echo ÿplot a supply run you must target the "X" that matches your side 
echo ÿ(red for Japanese and blue for American). REMEMBER that plot must 
echo ÿend in close proximity to the appropriate "X".
echo ÿ 
echo ÿ5) Ship speed can be affected by the direction and strength of the 
echo ÿwind.  Your task force will slow down if they are sailing against 
echo ÿthe wind.
echo ÿ
echo ÿ6) Light carriers (CVL) will be listed as CV's in the game.
echo ÿ
echo ÿ7) You can adjust the music volume by hitting the ALT 1 through 
echo ÿALT4 keys; you may also turn off the speech by hitting  
echo ÿALT- A.  You can use these keys only during game play.
pause
echo ÿ
echo ÿ8) You can alter the delay time for messages by accessing the 
echo ÿControls menu and using the "Message" option.
echo ÿ
echo ÿ9) When you select "smoke" for your task force, you will not see a 
echo ÿgraphical representation of the smoke (it slows down the game), but 
echo ÿthe effect do take place.
echo ÿ
echo ÿ10) If a ship starts sinking while you are in Fast Mode you are 
echo ÿdropped out of Fast Mode until the ship sinks and then Fast Mode 
echo ÿresumes.
echo ÿ
echo ÿ11) If your troops run out of supplies (0 supplies) you will be given 
echo ÿautomatic defend orders.  You can choose another option but when the
echo ÿbattle report comes the computer will not let you attack and will 
echo ÿplace you in defend.
echo ÿ
echo ÿ12) You will recieve one plane per plane type every day as 
echo ÿreinforcements.  Carriers also replaces one plane per plane type
echo ÿwhile at sea.
echo ÿ
echo ÿ13) Save games each take up 500K of disk space, so if you are
echo ÿlow on disk space you may get a "Save File Failure" message. 
pause
echo ÿMaintain a few megs of free space on your hard drive if you
echo ÿmake lots of new saves.
echo ÿ
echo ÿNAVIGATION
echo ÿ
echo ÿ1) There are two new orders in the Navigation Orders panel: 
echo ÿ"Manual" and "Tactical".  "Manual" allows you to manually set 
echo ÿspeed and course. "Tactical" allows the computer to run the ship 
echo ÿduring combat.
echo ÿ
echo ÿ2) You cannot steer the ship by clicking on the rudder.  If you 
echo ÿwish to manually direct the course of your task force you need to 
echo ÿaccess the Navigation Panel and  set the orders (Set Orders command) 
echo ÿto Manual.   Use the "Set Course" button to enter a new heading.  
echo ÿThis command also works with detached ships that are under 
echo ÿtactical orders.
echo ÿ
echo ÿ3) If you use the custom formation option, the computer will 
echo ÿautomatically sets up the flagship in the center.  You must arrange 
echo ÿyour task force in relation to the flagship.
echo ÿ
echo ÿ4) Be careful not to make your custom formations too wide or they 
echo ÿmay have trouble in confined waters.
pause
echo ÿ
echo ÿTORPEDOES
echo ÿ
echo ÿ1) The target readout for the torpedoes turns 180 degrees away 
echo ÿfrom the target if a friendly ship is interposed between your ship 
echo ÿand target ship. 
echo ÿ
echo ÿ2) Japanese torpedo mounts will try to reload during combat 
echo ÿbut they may not finish reloading until the ship is out of combat. 
echo ÿAmerican ships do not reload during combat.
echo ÿ
echo ÿ3)  If you switch the Torpedo Control on the bridge to manual control 
echo ÿit prevents the ship from firing torpedoes on its own.
echo ÿ
echo ÿ4) When you manually fire torpedoes you should set the game speed 
echo ÿto x1, otherwise the compute button does not update properly.
echo ÿ
echo ÿ
echo ÿAIR OPERATIONS
echo ÿ
echo ÿ1) You can click directly on the map to send an airstrike to a 
echo ÿsuspected enemy position without a contact report. However the 
echo ÿchance of the strike hitting a target is small, as the airstrike 
pause
echo ÿreally needs a contact report.
echo ÿ
echo ÿ2) Your air strike missions are restricted by the shortest range of 
echo ÿthe planes involved.  If the contact is beyond the range you will 
echo ÿnot get a target.  Try resetting the strike without the planes with 
echo ÿthe shortest range.
echo ÿ
echo ÿ3) You can only set search range and direction from the Air Ops 
echo ÿscreen (F5) of each ship or base. This option is not available from
echo ÿthe Flag Bridge.
echo ÿ
echo ÿ4) A base acts like the flag bridge of a carrier force.  You can 
echo ÿlaunch CAP from the "Flag Bridge" of the base. All other air 
echo ÿoperations must take place in the Air Ops screen (F5).
echo ÿ
echo ÿ5) "Scout" missions have been renamed "Search" missions.
echo ÿ
echo ÿ6) The aircraft ranges listed when you ready an aircraft represent 
echo ÿthe operational range in nautical miles for a one-way trip.
echo ÿ
echo ÿ7) The second speed listed in the Aircraft Briefing screens is the
echo ÿpayload speed of the listed aircraft.
echo ÿ
pause
echo ÿ
echo ÿBASE OPERATIONS
echo ÿ
echo ÿ1) The Flag Bridge screen also doubles as the base screen.
echo ÿ
echo ÿ2) When you are on the "Base" screen, clicking on the Cargo button 
echo ÿwill list the current number of supplies and troops in that base.
echo ÿ
echo ÿ3) When loading a ship a number will appear next to the name, 
echo ÿindicating the number of hours it takes the ship to load. Once the 
echo ÿship has finished loading you will see an "L" next to the name.  
echo ÿAlso, when you fuel or repair a ship, you will see the number of 
echo ÿhours to complete the fueling or repairs.
echo ÿ
echo ÿ4) There has been a change in how fueling occurs for a ship at 
echo ÿa base.  You can no longer select the amount, as the computer will 
echo ÿautomatically fuel the ship to 100% capacity.
echo ÿ
echo ÿMap Filters
echo ÿ
echo ÿThe map filters have been rearranged to be more efficient and a 
echo ÿcouple of new filters have been added.
echo ÿ
pause
echo ÿ1) Be careful when you use the Map filter option "Autocenter". 
echo ÿYou will be unable to move the map position from the chosen ship or 
echo ÿtask force.
echo ÿ
echo ÿ2) There are two new map filters. The first is "Range Circles"; which 
echo ÿsets a series of circles in 250-mile increments around the base or 
echo ÿtask force. This can be a useful option for planning airstrikes. 
echo ÿThe second new filter is the "TF Plot Times"; which will displays 
echo ÿthe time in days, hours, and minutes to reach each way point in your 
echo ÿplot. 
echo ÿ
echo ÿ
echo ÿDAMAGE CONTROL
echo ÿ
echo ÿ1) During combat your damage control crews are less effective.
echo ÿThe fastest way to repair a ship is to get out of combat.
echo ÿ
echo ÿ2) As long as one of the Main Gun Directors is functioning, your guns 
echo ÿshould be able to fire at will.  
echo ÿ
echo ÿ3) Damage to your ship's shaft or rudder reduces the ship's 
echo ÿspeed to zero and prevents it from turning.
echo ÿ
pause
echo ÿ
echo ÿSUPPLIES
echo ÿ
echo ÿ1) During unloading of a Supply Run, each ship unloads up to 
echo ÿ50 troops and 500 supplies per hour.
echo ÿ
echo ÿ2) The formula for supply consumption is determined by multiplying 
echo ÿthe number of troops by the combat option (defend=1, probe=2, 
echo ÿattack=3, offensive=4) and dividing by five. For example, 1000 
echo ÿtroops on a probe mission would use the following supply 
echo ÿ(1000 x 2 = 2000/5 = 400 tons of supply used). The final number 
echo ÿhas some random variation applied after the calculation, so the 
echo ÿnumber obtained should be consider an approximation.
echo ÿ
echo ÿ
echo ÿTRANSLATION OF JAPANESE SPEECH
echo ÿ
echo ÿJAPANESE                        ENGLISH
echo ÿ
echo ÿTekikan Hakken                  Enemy spotted
echo ÿ
echo ÿGyorai Hakken                   Torpedoes spotted
echo ÿ
pause
echo ÿTekikan Gekichin                Enemy ship sinking
echo ÿ
echo ÿMeirei Dentatsu                 We are transfering command, sir
echo ÿ
echo ÿHonkan Gekichin                 Our ship is sinking
echo ÿ
echo ÿ
echo ÿGAME HINTS
echo ÿ
echo ÿSUPPLY RUNS
echo ÿ
echo ÿThe Japanese player must be very careful planning and running Supply 
echo ÿRun missions. These are critical to the Japanese in the campaign 
echo ÿgame. As the Japanese player you face a major problem running 
echo ÿagainst U.S. air power in Henderson Field and from the U.S. carriers.  
echo ÿIn order to survive your missions must arrive at Guadalcanal during 
echo ÿthe early evening so that your ships can unload and retreat before 
echo ÿthe Allied air power can strike. Create a task force of destroyers 
echo ÿand cruisers and load them with supplies. Run the task force down 
echo ÿand hide in the slot. The "slot" itself begins around 300 miles 
echo ÿnorthwest of Guadalcanal. It will take you at least a day or two 
echo ÿbefore you reach the "slot". If you arrive early in the morning or 
echo ÿlate afternoon, stop your TF and wait. The best time to go down the 
pause
echo ÿslot is around 1400 hrs (2:00 PM) and go at full speed, so that 
echo ÿyou should make it to Guadalcanal by 2200 hrs (10:00PM). By this 
echo ÿmethod you can avoid U.S. airstrikes from Henderson; however, if 
echo ÿthere are U.S. carriers around, you may have to modify your schedule.  
echo ÿNote that the Japanese transports only move at approximately 15 knots, 
echo ÿso if they are a part of the task force you will have to change your 
echo ÿtactics.
echo ÿ
echo ÿTORPEDO ATTACKS
echo ÿ
echo ÿ	
echo ÿThe torpedo attack is one of the more difficult skills to master in 
echo ÿthe game. A lot depends on timing and luck.  It is difficult to hit 
echo ÿa moving ship and if you are American, the chances of your torpedoes 
echo ÿhitting something and actually working are very slim. The best way 
echo ÿto hit a ship with torpedoes is to launch several waves at the target 
echo ÿship but at different angles.  What you want to do is force the 
echo ÿtarget ship into a position where it cannot avoid the torpedoes.  
echo ÿYou can detach a destroyer or two and send them around the flank of 
echo ÿthe enemy Task Force and have them launch torpedoes.  Your main force 
echo ÿshould then launch another wave from the opposite side. You can 
echo ÿalso plot your Task Force for a torpedo run in one direction, then 
echo ÿturn sharply and launch a second set on the new plot.
pause
echo ÿ
echo ÿCAMPAIGN GAME
echo ÿ
echo ÿThe main goal of the campaign game is not just to sink a lot of enemy 
echo ÿships, but to maintain a hold on Guadalcanal. If your base runs out 
echo ÿof men, it will fall to the enemy. With this in mind, the control of 
echo ÿthe seas around Guadalcanal becomes important, as the side who can 
echo ÿdominate the seas can best resupply its bases on Guadalcanal.       
echo ÿ
echo ÿFor the Japanese the first campaign will be a difficult one, as you 
echo ÿare initially facing a larger American force. Until you get your 
echo ÿcarriers into play, lay low and stick to night missions. Use your 
echo ÿBetty bombers to harass the American TF's off of Henderson Field. If 
echo ÿyou can sink transports, you will find that it helps in the long 
echo ÿterm. One of the strengths for the Japanese is the ability to use 
echo ÿdestroyers as transport.  The destroyer's speed allows them to avoid 
echo ÿthe enemy air by arriving, unloading, and leaving before daylight. 
echo ÿ
echo ÿAs the Americans, use your initial advantage to make multiple supply 
echo ÿruns and bombardment missions before the Japanese carriers show up.  
echo ÿIn night battles be careful of the Japanese torpedo attacks as one 
echo ÿhit could sink a cruiser.  Use Henderson Field to your advantage; 
echo ÿremember to transfer some PBY's there so you can launch search 
pause
echo ÿmissions.  Protect your carriers; as each carrier could be worth 
echo ÿas much as 70,000 points, and losing one or two of them will cost 
echo ÿyou the game.
echo ÿ
echo ÿADDITIONAL QUESTIONS AND ANSWERS
echo ÿ
echo ÿQ: Why are there two Name options under Aircraft when the map filters 
echo ÿare displayed?
echo ÿ
echo ÿA: The map filters have been modified from the form shown in the 
echo ÿuser's manual. The first Name option is under the formation heading 
echo ÿand when toggled on displays the names of overall flight formations.  
echo ÿThe second Name option displays the names of individual planes 
echo ÿwhen they are making their attack runs and performing their search 
echo ÿmissions.
echo ÿ
echo ÿQ: Why am I unable to transfer ships from Truk to Rabual or vice 
echo ÿversa?
echo ÿ
echo ÿA: Historically, both of these bases were separate commands in the 
echo ÿJapanese Navy and did not transfer ships to each other.
echo ÿIf you wish to move some ships to another base, you can avoid the 
echo ÿseparate command issue by using the "Return to Base" order when you 
pause
echo ÿhave completed a mission.
echo ÿ
echo ÿQ: Why do I receive land combat reports, that indicate zero 
echo ÿcasualties?
echo ÿ
echo ÿA: Most likely both you and your opponent are in defensive mode, 
echo ÿtherefore you have no losses.
echo ÿ
echo ÿQ: Why do I receive contact reports that are not listed in my 
echo ÿTarget Selection menu?
echo ÿ
echo ÿA: Your search planes have a much long range than your strike 
echo ÿplanes (Kates, VALs, Avengers, etc.).  The contact will not be listed 
echo ÿas a target until your strike planes come within a reasonable range 
echo ÿto hit the contact.
echo ÿ
echo ÿQ: Why do B-17s and Bettys seem to do very little damage to Henderson 
echo ÿor Guadalcanal?
echo ÿ
echo ÿA: Neither of these two planes was very useful in land bombing roles 
echo ÿin this campaign.  First, Henderson Field was very difficult to 
echo ÿdamage by bombs alone, and second, bombing at high altitudes often 
echo ÿresulted in very inaccurate bombings.
pause
echo ÿ
echo ÿQ: Why doesn't my task force move even after I set a plot for it?
echo ÿ
echo ÿA: Since you are in manual mode you need to set the speed for your 
echo ÿtask force (it is probably at 0).
echo ÿ
echo ÿQ: Why do my search planes turn around at 4:00PM and head home.
echo ÿ
echo ÿA:  It is because at that time the pilots know they need to head 
echo ÿback before sunset. Make sure you launch your air formations early 
echo ÿenough to allow them time to do their missions.
echo ÿ
echo ÿQ: Why did my air strike go after a secondary target close to the 
echo ÿoriginal target I selected?
echo ÿ
echo ÿA: The pilots have a tendency to attack the first thing they see.  
echo ÿThis happened quite often in the actual battles.
echo ÿ
echo ÿADDITIONAL TECHNICAL INFORMATION
echo ÿ
echo ÿVESA Drivers
echo ÿ
echo ÿWhat exactly is a VESA driver? Good question. The VESA driver itself 
pause
echo ÿis a small program which loads into memory and interacts with your 
echo ÿvideo board. This little program (in conjunction with your video 
echo ÿboard) is then is able to display resolutions such as 640x480, 
echo ÿ800x600, and 1024x768, all using 256 glorious colors. This enhanced 
echo ÿresolution can be used to great effect in many ways. A VESA driver 
echo ÿis also a driver which follows standards set by the Video Electronic 
echo ÿStandards Association. This Association is responsible for setting 
echo ÿand supporting industry-wide video graphics standards for the benefit 
echo ÿof end-users. 
echo ÿ
echo ÿWhy is this driver needed? The driver is necessary since the original 
echo ÿVGA standard (introduced in 1987) set 320x200 as being the highest 
echo ÿresolution available. Video board companies soon upped the ante with 
echo ÿhigher-resolution VGA boards (also knows as Super VGA, or SVGA, 
echo ÿboards) and quickly found a need to make these boards compatible with 
echo ÿeach other. Hence, the VESA association was formed to set standards 
echo ÿfor these boards. We should note here that every video board company 
echo ÿhas its own VESA driver, and that a VESA driver made for one video 
echo ÿboard does not necessarily work with another.
echo ÿ
echo ÿGreat Naval Battles II uses a high-resolution 640x480x256 mode in 
echo ÿorder to more accurately depict the detail of naval combat. 
echo ÿObviously, in order to reap the benefits of this higher resolution, 
pause
echo ÿyou need to install the VESA driver before playing the game.
echo ÿ
echo ÿOur installation program tries to identify the video board you are 
echo ÿusing, and installs the appropriate VESA driver in the GNB2.BAT file. 
echo ÿRunning the game by typing GNB2 and pressing Enter/Return should work 
echo ÿfor the majority of users.
echo ÿ
echo ÿHowever, some video boards may not be detected by the installation 
echo ÿprogram, or the VESA driver used may not work with your board. If you 
echo ÿhave trouble running the game with the GNB2 command, try 
echo ÿtyping START2 and press Enter/Return. The START2.BAT file includes 
echo ÿa universal VESA driver that should work with most video boards.
echo ÿ
echo ÿOne other option you may wish to consider is installing your VESA 
echo ÿdriver in your AUTOEXEC.BAT file so it is always available upon 
echo ÿboot-up. To do this, you will need to know the location and name of 
echo ÿthe VESA driver for your video board. Add the complete path and 
echo ÿfilename for the driver as a line in your AUTOEXEC.BAT file using 
echo ÿthe EDIT command. As an example, we have included an AUTOEXEC.BAT 
echo ÿwith an Orchid VESA driver installed. Note that you may need to 
echo ÿrefer to your video card manual and DOS manual for additional 
echo ÿinformation.
echo ÿ
pause
echo ÿ
echo ÿExample AUTOEXEC.BAT
echo ÿ
echo ÿPATH=C:\;C:\DOS;C:\MOUSE;C:\UTIL
echo ÿC:\UTIL\ORCHDVSA
echo ÿPROMPT $P$G
echo ÿ
echo ÿNote: This examples assumes the VESA driver resides in the UTIL 
echo ÿdirectory. 
echo ÿ
echo ÿ
echo ÿGAME MEMORY
echo ÿ
echo ÿGreat Naval Battles Vol.2  requires a large amount of extended 
echo ÿmemory in order to run.  This game does not use expanded memory, 
echo ÿit is very important that you do not use EMM386.sys in your 
echo ÿCONFIG.SYS file in your computer. This game needs at least 3,080,192  
echo ÿbytes of extended memory in order to run. 
echo ÿ
echo ÿ
echo ÿSUMMARY OF NEW COMMAND KEYS
echo ÿALT 1 - ALT 4   Change Music Volume
echo ÿALT A           Turn Speech ON/OFF         
pause
echo ÿPAGEUP/DOWN     Page up/down the ship list in a task force or base.
echo ÿ
echo ÿDIRECTORY of SHIP CLASSES
echo ÿ
echo ÿJAPANESE SHIPS
echo ÿ
echo ÿBB's
echo ÿ
echo ÿNAGATO CLASS
echo ÿ	Mutsu
echo ÿ
echo ÿKONGO CLASS
echo ÿ	Kongo, Hiei, Kirishima, Haruna
echo ÿ
echo ÿYAMATO CLASS
echo ÿ	Yamato
echo ÿ
echo ÿCV's
echo ÿ
echo ÿJUNYO CLASS
echo ÿ	Junyo, Hiyo
echo ÿ
echo ÿRYUJO CLASS
pause
echo ÿ	Ryujo
echo ÿ
echo ÿSHOKAKU CLASS
echo ÿ	Shokaku, Zuikaku
echo ÿ
echo ÿZUIHO CLASS
echo ÿ	Zuiho
echo ÿ
echo ÿCS's
echo ÿ
echo ÿCHITOSE CLASS
echo ÿ	Chiyoda, Chitose
echo ÿ
echo ÿCS MARU CLASS
echo ÿ	Kamikawa Maru
echo ÿ
echo ÿNISSHIN CLASS
echo ÿ	Nisshin
echo ÿ
echo ÿCA's
echo ÿ
echo ÿTAKAO CLASS
echo ÿ	Chokai, Takao, Atago, Maya
pause
echo ÿ
echo ÿFURUTAKA CLASS
echo ÿ	Furutaka, Kako
echo ÿ
echo ÿAOBA CLASS
echo ÿ	Aoba, Kinugasa
echo ÿ
echo ÿNACHI CLASS
echo ÿ	Myoko, Haguro
echo ÿ
echo ÿMOGAMI CLASS
echo ÿ	Suzuya, Kumano
echo ÿ
echo ÿTONE CLASS
echo ÿ	Tone, Chikuma
echo ÿ
echo ÿCL's
echo ÿ
echo ÿYUBARI CLASS
echo ÿ	Yubari (not in manual, appears in ship briefings list)
echo ÿ
echo ÿTENRYU CLASS
echo ÿ	Tenryu, Tatsuta
pause
echo ÿ
echo ÿSENDAI CLASS
echo ÿ	Jintsu, Sendai
echo ÿ
echo ÿNAGARA CLASS
echo ÿ	Nagara, Yura, Isuzu
echo ÿ
echo ÿDD's
echo ÿ
echo ÿKAMAKAZE CLASS
echo ÿ	Asakaze, Oite, Yunagi
echo ÿ
echo ÿMUTSUKI CLASS
echo ÿ	Uzuki, Mochizuki, Yuzuki,  Mutsuki, Yayoi
echo ÿ
echo ÿSHIRATSUYU CLASS
echo ÿ	Kawakaze, Umikaze, Suzukaze, Shiratsuyu, Shigure, Murasume, 
echo ÿ	Samidare, Harausme, Yudachi
echo ÿ
echo ÿKAGERO CLASS
echo ÿ	Arashi, Kagero, Maikaze, Isokaze, Urakaze, Hamakaze, 
echo ÿ	Hagikaze, Tanikaze, Kuroshio, Oyahio, Hatsukaze, Yukikaze, 
echo ÿ	Hayashio, Amatsukaze, Tokitsukaze, Nowaki
pause
echo ÿ
echo ÿHATSUHARU CLASS
echo ÿ	Yugure, Ariake
echo ÿ
echo ÿASASHIO CLASS
echo ÿ	Natsugumo, Minegumo, Asagumo
echo ÿ
echo ÿFUBUKI CLASS
echo ÿ	Sazanami, Oshio, Shirakumo, Asagiri, Yugiri, Amagiri, 
echo ÿ	Akebono, Uranami, Shikinami, Ayanami, Fubuki, Shirayuki, 
echo ÿ	Hatsuyuki, Murakumo, Isonami
echo ÿ
echo ÿAKATSUKI CLASS
echo ÿ	Akizuki, Akatsuki, Ikazuchi, Inazuma
echo ÿ
echo ÿYUGUMO CLASS
echo ÿ	Makinami, Naganami, Yugumo, Akigumo, Kazegumo, Makigumo
echo ÿ
echo ÿMINEKAZE CLASS  
echo ÿ	Hakaze, Akikaze, Tachikaze
echo ÿ
echo ÿ
echo ÿ
pause
echo ÿALLIED SHIPS
echo ÿ
echo ÿ
echo ÿBB's
echo ÿ
echo ÿNORTH CAROLINA CLASS
echo ÿ	North Carolina, Washington
echo ÿ
echo ÿSOUTH DAKOTA CLASS
echo ÿ	South Dakota 
echo ÿ
echo ÿCV's
echo ÿ
echo ÿLEXINGTON CLASS
echo ÿ	Saratoga
echo ÿ
echo ÿYORKTOWN CLASS
echo ÿ	Enterprise, Hornet
echo ÿ
echo ÿWASP CLASS
echo ÿ	Wasp
echo ÿ
echo ÿCVE's
pause
echo ÿ
echo ÿLONG ISLAND CLASS
echo ÿ	Long Island
echo ÿ
echo ÿCA's
echo ÿ
echo ÿNEW ORLEANS CLASS
echo ÿ	New Orleans, Minneapolis, San Francisco, Astoria, Quincy, 
echo ÿ	Vincennes
echo ÿ
echo ÿPORTLAND CLASS
echo ÿ	Portland
echo ÿ
echo ÿPENSACOLA CLASS
echo ÿ	Salt Lake City, Pensacola
echo ÿ
echo ÿNORTHAMPTON CLASS
echo ÿ	Chester, Northampton, Chicago
echo ÿ
echo ÿAUSTRALIA CLASS
echo ÿ	Australia
echo ÿ
echo ÿCANBERRA CLASS
pause
echo ÿ	Canberra 
echo ÿ
echo ÿCL's
echo ÿ
echo ÿBROOKLYN CLASS
echo ÿ	Boise, Helena
echo ÿ
echo ÿATLANTA CLASS
echo ÿ	Juneau, Atlanta, San Juan
echo ÿ
echo ÿPERTH CLASS
echo ÿ	Hobart
echo ÿ
echo ÿDD's
echo ÿ
echo ÿPORTER CLASS
echo ÿ	Phelps, Balch, Selfridge, Porter
echo ÿ
echo ÿFARRAGUT CLASS
echo ÿ	Dewey, Hull, Farragut, Macdonough, Worden, Dale
echo ÿ
echo ÿBENHAM CLASS
echo ÿ	Benham, Ellet, Wilson, Lang, Sterett, Stack
pause
echo ÿ
echo ÿBENSON CLASS
echo ÿ	Grayson, Gwin, Aaron Ward, Farenholt, Laffey, Monssen, 
echo ÿ	Buchanan, Lansdowne, Duncan, McCalla, Lardner, Meredith
echo ÿ
echo ÿBAGLEY CLASS
echo ÿ	Maury, Patterson, Mugford, Ralph Talbot, Jarvis, Bagley, 
echo ÿ	Blue, Helm, Henley
echo ÿ
echo ÿMAHAN CLASS
echo ÿ	Preston, Mahan, Lamson, Conygham, Shaw, Cushing, Smith
echo ÿ
echo ÿSIMS CLASS
echo ÿ	Hughes, Anderson, Russell, Morris, Mustin, O'Brien
echo ÿ
echo ÿFLETCHER CLASS
echo ÿ	Nicholas, Fletcher
echo ÿ
echo ÿ
echo ÿ
echo ÿ
echo ÿ
echo ÿ
pause
echo ÿJ.Young
echo ÿ
echo ÿÿÿ