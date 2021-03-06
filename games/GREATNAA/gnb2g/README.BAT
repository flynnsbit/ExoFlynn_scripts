@echo off
echo �GREAT NAVAL BATTLES VOL.2  GUADALCANAL 1942-43
echo �
echo �version 1.0 3/21/94
echo �
echo �The contents of this file, in order, include:
echo �	- Game Clarifications and Additions
echo �	- Game Hints
echo �	- Additional Questions and Answers
echo �	- Additional Technical Information
echo �		- Vesa Drivers
echo �		- Game Memory
echo �		- Summary of New Command Keys
echo �	- Directory of Ship Classes     
echo �
echo �
echo �
echo �GAME CLARIFICATIONS AND ADDITIONS
echo �
echo �
echo �GENERAL
echo �
echo �1) If you experience a game crash,  reload your most recent save, 
echo �go to the Memory Report in the Controls menu located at the top 
pause
echo �menu bar, and record the numbers found there before calling 
echo �SSI technical support.  These numbers will show the amount of free 
echo �memory and will be a big help to tech. support.
echo �
echo �2) IMPORTANT: Your game may slow down if you have too many map 
echo �filters on. Filters like range circles or torpedoes will slow down 
echo �the game, so turn them off to speed up the game.
echo �
echo �3) We have included Gravis native modein the sound install menu as a 
echo �courtesy to our users. We do not gurantee 100% compatibility because 
echo �out testing revealed some intermittent problems.If you have problems 
echo �using this card in its native mode, we suggest that you use the 
echo �Sound Blaster emulation option in the sound install menu.
echo �
echo �4) Currently in the game, computer will occassionally plot to close 
echo �to land and may run some ships aground.  If you wish you can edit
echo �the GNB.bat file with your DOS editor and add the following command.
echo �Towards the end of the file look for the following:
echo �
echo �gnbg.exe vesa480.dll
echo �
echo �alter this command line to look like this:
echo �
pause
echo �gnbg.exe vesa480.dll AGROUND
echo �
echo �This allow ships to ignore portions of land while the task force
echo �moves. You still cannot plot thru islands but this will allow
echo �you to clip a corner or two.
echo �
echo �4) If you manually plot the course for a bombard mission you must
echo �target the appropriate "X" in the waters off Guadalcanal.  The 
echo �Japanese must target the blue (American) "X" and the Americans
echo �must target the red (Japanese) "X".  Likewise when you manually 
echo �plot a supply run you must target the "X" that matches your side 
echo �(red for Japanese and blue for American). REMEMBER that plot must 
echo �end in close proximity to the appropriate "X".
echo � 
echo �5) Ship speed can be affected by the direction and strength of the 
echo �wind.  Your task force will slow down if they are sailing against 
echo �the wind.
echo �
echo �6) Light carriers (CVL) will be listed as CV's in the game.
echo �
echo �7) You can adjust the music volume by hitting the ALT 1 through 
echo �ALT4 keys; you may also turn off the speech by hitting  
echo �ALT- A.  You can use these keys only during game play.
pause
echo �
echo �8) You can alter the delay time for messages by accessing the 
echo �Controls menu and using the "Message" option.
echo �
echo �9) When you select "smoke" for your task force, you will not see a 
echo �graphical representation of the smoke (it slows down the game), but 
echo �the effect do take place.
echo �
echo �10) If a ship starts sinking while you are in Fast Mode you are 
echo �dropped out of Fast Mode until the ship sinks and then Fast Mode 
echo �resumes.
echo �
echo �11) If your troops run out of supplies (0 supplies) you will be given 
echo �automatic defend orders.  You can choose another option but when the
echo �battle report comes the computer will not let you attack and will 
echo �place you in defend.
echo �
echo �12) You will recieve one plane per plane type every day as 
echo �reinforcements.  Carriers also replaces one plane per plane type
echo �while at sea.
echo �
echo �13) Save games each take up 500K of disk space, so if you are
echo �low on disk space you may get a "Save File Failure" message. 
pause
echo �Maintain a few megs of free space on your hard drive if you
echo �make lots of new saves.
echo �
echo �NAVIGATION
echo �
echo �1) There are two new orders in the Navigation Orders panel: 
echo �"Manual" and "Tactical".  "Manual" allows you to manually set 
echo �speed and course. "Tactical" allows the computer to run the ship 
echo �during combat.
echo �
echo �2) You cannot steer the ship by clicking on the rudder.  If you 
echo �wish to manually direct the course of your task force you need to 
echo �access the Navigation Panel and  set the orders (Set Orders command) 
echo �to Manual.   Use the "Set Course" button to enter a new heading.  
echo �This command also works with detached ships that are under 
echo �tactical orders.
echo �
echo �3) If you use the custom formation option, the computer will 
echo �automatically sets up the flagship in the center.  You must arrange 
echo �your task force in relation to the flagship.
echo �
echo �4) Be careful not to make your custom formations too wide or they 
echo �may have trouble in confined waters.
pause
echo �
echo �TORPEDOES
echo �
echo �1) The target readout for the torpedoes turns 180 degrees away 
echo �from the target if a friendly ship is interposed between your ship 
echo �and target ship. 
echo �
echo �2) Japanese torpedo mounts will try to reload during combat 
echo �but they may not finish reloading until the ship is out of combat. 
echo �American ships do not reload during combat.
echo �
echo �3)  If you switch the Torpedo Control on the bridge to manual control 
echo �it prevents the ship from firing torpedoes on its own.
echo �
echo �4) When you manually fire torpedoes you should set the game speed 
echo �to x1, otherwise the compute button does not update properly.
echo �
echo �
echo �AIR OPERATIONS
echo �
echo �1) You can click directly on the map to send an airstrike to a 
echo �suspected enemy position without a contact report. However the 
echo �chance of the strike hitting a target is small, as the airstrike 
pause
echo �really needs a contact report.
echo �
echo �2) Your air strike missions are restricted by the shortest range of 
echo �the planes involved.  If the contact is beyond the range you will 
echo �not get a target.  Try resetting the strike without the planes with 
echo �the shortest range.
echo �
echo �3) You can only set search range and direction from the Air Ops 
echo �screen (F5) of each ship or base. This option is not available from
echo �the Flag Bridge.
echo �
echo �4) A base acts like the flag bridge of a carrier force.  You can 
echo �launch CAP from the "Flag Bridge" of the base. All other air 
echo �operations must take place in the Air Ops screen (F5).
echo �
echo �5) "Scout" missions have been renamed "Search" missions.
echo �
echo �6) The aircraft ranges listed when you ready an aircraft represent 
echo �the operational range in nautical miles for a one-way trip.
echo �
echo �7) The second speed listed in the Aircraft Briefing screens is the
echo �payload speed of the listed aircraft.
echo �
pause
echo �
echo �BASE OPERATIONS
echo �
echo �1) The Flag Bridge screen also doubles as the base screen.
echo �
echo �2) When you are on the "Base" screen, clicking on the Cargo button 
echo �will list the current number of supplies and troops in that base.
echo �
echo �3) When loading a ship a number will appear next to the name, 
echo �indicating the number of hours it takes the ship to load. Once the 
echo �ship has finished loading you will see an "L" next to the name.  
echo �Also, when you fuel or repair a ship, you will see the number of 
echo �hours to complete the fueling or repairs.
echo �
echo �4) There has been a change in how fueling occurs for a ship at 
echo �a base.  You can no longer select the amount, as the computer will 
echo �automatically fuel the ship to 100% capacity.
echo �
echo �Map Filters
echo �
echo �The map filters have been rearranged to be more efficient and a 
echo �couple of new filters have been added.
echo �
pause
echo �1) Be careful when you use the Map filter option "Autocenter". 
echo �You will be unable to move the map position from the chosen ship or 
echo �task force.
echo �
echo �2) There are two new map filters. The first is "Range Circles"; which 
echo �sets a series of circles in 250-mile increments around the base or 
echo �task force. This can be a useful option for planning airstrikes. 
echo �The second new filter is the "TF Plot Times"; which will displays 
echo �the time in days, hours, and minutes to reach each way point in your 
echo �plot. 
echo �
echo �
echo �DAMAGE CONTROL
echo �
echo �1) During combat your damage control crews are less effective.
echo �The fastest way to repair a ship is to get out of combat.
echo �
echo �2) As long as one of the Main Gun Directors is functioning, your guns 
echo �should be able to fire at will.  
echo �
echo �3) Damage to your ship's shaft or rudder reduces the ship's 
echo �speed to zero and prevents it from turning.
echo �
pause
echo �
echo �SUPPLIES
echo �
echo �1) During unloading of a Supply Run, each ship unloads up to 
echo �50 troops and 500 supplies per hour.
echo �
echo �2) The formula for supply consumption is determined by multiplying 
echo �the number of troops by the combat option (defend=1, probe=2, 
echo �attack=3, offensive=4) and dividing by five. For example, 1000 
echo �troops on a probe mission would use the following supply 
echo �(1000 x 2 = 2000/5 = 400 tons of supply used). The final number 
echo �has some random variation applied after the calculation, so the 
echo �number obtained should be consider an approximation.
echo �
echo �
echo �TRANSLATION OF JAPANESE SPEECH
echo �
echo �JAPANESE                        ENGLISH
echo �
echo �Tekikan Hakken                  Enemy spotted
echo �
echo �Gyorai Hakken                   Torpedoes spotted
echo �
pause
echo �Tekikan Gekichin                Enemy ship sinking
echo �
echo �Meirei Dentatsu                 We are transfering command, sir
echo �
echo �Honkan Gekichin                 Our ship is sinking
echo �
echo �
echo �GAME HINTS
echo �
echo �SUPPLY RUNS
echo �
echo �The Japanese player must be very careful planning and running Supply 
echo �Run missions. These are critical to the Japanese in the campaign 
echo �game. As the Japanese player you face a major problem running 
echo �against U.S. air power in Henderson Field and from the U.S. carriers.  
echo �In order to survive your missions must arrive at Guadalcanal during 
echo �the early evening so that your ships can unload and retreat before 
echo �the Allied air power can strike. Create a task force of destroyers 
echo �and cruisers and load them with supplies. Run the task force down 
echo �and hide in the slot. The "slot" itself begins around 300 miles 
echo �northwest of Guadalcanal. It will take you at least a day or two 
echo �before you reach the "slot". If you arrive early in the morning or 
echo �late afternoon, stop your TF and wait. The best time to go down the 
pause
echo �slot is around 1400 hrs (2:00 PM) and go at full speed, so that 
echo �you should make it to Guadalcanal by 2200 hrs (10:00PM). By this 
echo �method you can avoid U.S. airstrikes from Henderson; however, if 
echo �there are U.S. carriers around, you may have to modify your schedule.  
echo �Note that the Japanese transports only move at approximately 15 knots, 
echo �so if they are a part of the task force you will have to change your 
echo �tactics.
echo �
echo �TORPEDO ATTACKS
echo �
echo �	
echo �The torpedo attack is one of the more difficult skills to master in 
echo �the game. A lot depends on timing and luck.  It is difficult to hit 
echo �a moving ship and if you are American, the chances of your torpedoes 
echo �hitting something and actually working are very slim. The best way 
echo �to hit a ship with torpedoes is to launch several waves at the target 
echo �ship but at different angles.  What you want to do is force the 
echo �target ship into a position where it cannot avoid the torpedoes.  
echo �You can detach a destroyer or two and send them around the flank of 
echo �the enemy Task Force and have them launch torpedoes.  Your main force 
echo �should then launch another wave from the opposite side. You can 
echo �also plot your Task Force for a torpedo run in one direction, then 
echo �turn sharply and launch a second set on the new plot.
pause
echo �
echo �CAMPAIGN GAME
echo �
echo �The main goal of the campaign game is not just to sink a lot of enemy 
echo �ships, but to maintain a hold on Guadalcanal. If your base runs out 
echo �of men, it will fall to the enemy. With this in mind, the control of 
echo �the seas around Guadalcanal becomes important, as the side who can 
echo �dominate the seas can best resupply its bases on Guadalcanal.       
echo �
echo �For the Japanese the first campaign will be a difficult one, as you 
echo �are initially facing a larger American force. Until you get your 
echo �carriers into play, lay low and stick to night missions. Use your 
echo �Betty bombers to harass the American TF's off of Henderson Field. If 
echo �you can sink transports, you will find that it helps in the long 
echo �term. One of the strengths for the Japanese is the ability to use 
echo �destroyers as transport.  The destroyer's speed allows them to avoid 
echo �the enemy air by arriving, unloading, and leaving before daylight. 
echo �
echo �As the Americans, use your initial advantage to make multiple supply 
echo �runs and bombardment missions before the Japanese carriers show up.  
echo �In night battles be careful of the Japanese torpedo attacks as one 
echo �hit could sink a cruiser.  Use Henderson Field to your advantage; 
echo �remember to transfer some PBY's there so you can launch search 
pause
echo �missions.  Protect your carriers; as each carrier could be worth 
echo �as much as 70,000 points, and losing one or two of them will cost 
echo �you the game.
echo �
echo �ADDITIONAL QUESTIONS AND ANSWERS
echo �
echo �Q: Why are there two Name options under Aircraft when the map filters 
echo �are displayed?
echo �
echo �A: The map filters have been modified from the form shown in the 
echo �user's manual. The first Name option is under the formation heading 
echo �and when toggled on displays the names of overall flight formations.  
echo �The second Name option displays the names of individual planes 
echo �when they are making their attack runs and performing their search 
echo �missions.
echo �
echo �Q: Why am I unable to transfer ships from Truk to Rabual or vice 
echo �versa?
echo �
echo �A: Historically, both of these bases were separate commands in the 
echo �Japanese Navy and did not transfer ships to each other.
echo �If you wish to move some ships to another base, you can avoid the 
echo �separate command issue by using the "Return to Base" order when you 
pause
echo �have completed a mission.
echo �
echo �Q: Why do I receive land combat reports, that indicate zero 
echo �casualties?
echo �
echo �A: Most likely both you and your opponent are in defensive mode, 
echo �therefore you have no losses.
echo �
echo �Q: Why do I receive contact reports that are not listed in my 
echo �Target Selection menu?
echo �
echo �A: Your search planes have a much long range than your strike 
echo �planes (Kates, VALs, Avengers, etc.).  The contact will not be listed 
echo �as a target until your strike planes come within a reasonable range 
echo �to hit the contact.
echo �
echo �Q: Why do B-17s and Bettys seem to do very little damage to Henderson 
echo �or Guadalcanal?
echo �
echo �A: Neither of these two planes was very useful in land bombing roles 
echo �in this campaign.  First, Henderson Field was very difficult to 
echo �damage by bombs alone, and second, bombing at high altitudes often 
echo �resulted in very inaccurate bombings.
pause
echo �
echo �Q: Why doesn't my task force move even after I set a plot for it?
echo �
echo �A: Since you are in manual mode you need to set the speed for your 
echo �task force (it is probably at 0).
echo �
echo �Q: Why do my search planes turn around at 4:00PM and head home.
echo �
echo �A:  It is because at that time the pilots know they need to head 
echo �back before sunset. Make sure you launch your air formations early 
echo �enough to allow them time to do their missions.
echo �
echo �Q: Why did my air strike go after a secondary target close to the 
echo �original target I selected?
echo �
echo �A: The pilots have a tendency to attack the first thing they see.  
echo �This happened quite often in the actual battles.
echo �
echo �ADDITIONAL TECHNICAL INFORMATION
echo �
echo �VESA Drivers
echo �
echo �What exactly is a VESA driver? Good question. The VESA driver itself 
pause
echo �is a small program which loads into memory and interacts with your 
echo �video board. This little program (in conjunction with your video 
echo �board) is then is able to display resolutions such as 640x480, 
echo �800x600, and 1024x768, all using 256 glorious colors. This enhanced 
echo �resolution can be used to great effect in many ways. A VESA driver 
echo �is also a driver which follows standards set by the Video Electronic 
echo �Standards Association. This Association is responsible for setting 
echo �and supporting industry-wide video graphics standards for the benefit 
echo �of end-users. 
echo �
echo �Why is this driver needed? The driver is necessary since the original 
echo �VGA standard (introduced in 1987) set 320x200 as being the highest 
echo �resolution available. Video board companies soon upped the ante with 
echo �higher-resolution VGA boards (also knows as Super VGA, or SVGA, 
echo �boards) and quickly found a need to make these boards compatible with 
echo �each other. Hence, the VESA association was formed to set standards 
echo �for these boards. We should note here that every video board company 
echo �has its own VESA driver, and that a VESA driver made for one video 
echo �board does not necessarily work with another.
echo �
echo �Great Naval Battles II uses a high-resolution 640x480x256 mode in 
echo �order to more accurately depict the detail of naval combat. 
echo �Obviously, in order to reap the benefits of this higher resolution, 
pause
echo �you need to install the VESA driver before playing the game.
echo �
echo �Our installation program tries to identify the video board you are 
echo �using, and installs the appropriate VESA driver in the GNB2.BAT file. 
echo �Running the game by typing GNB2 and pressing Enter/Return should work 
echo �for the majority of users.
echo �
echo �However, some video boards may not be detected by the installation 
echo �program, or the VESA driver used may not work with your board. If you 
echo �have trouble running the game with the GNB2 command, try 
echo �typing START2 and press Enter/Return. The START2.BAT file includes 
echo �a universal VESA driver that should work with most video boards.
echo �
echo �One other option you may wish to consider is installing your VESA 
echo �driver in your AUTOEXEC.BAT file so it is always available upon 
echo �boot-up. To do this, you will need to know the location and name of 
echo �the VESA driver for your video board. Add the complete path and 
echo �filename for the driver as a line in your AUTOEXEC.BAT file using 
echo �the EDIT command. As an example, we have included an AUTOEXEC.BAT 
echo �with an Orchid VESA driver installed. Note that you may need to 
echo �refer to your video card manual and DOS manual for additional 
echo �information.
echo �
pause
echo �
echo �Example AUTOEXEC.BAT
echo �
echo �PATH=C:\;C:\DOS;C:\MOUSE;C:\UTIL
echo �C:\UTIL\ORCHDVSA
echo �PROMPT $P$G
echo �
echo �Note: This examples assumes the VESA driver resides in the UTIL 
echo �directory. 
echo �
echo �
echo �GAME MEMORY
echo �
echo �Great Naval Battles Vol.2  requires a large amount of extended 
echo �memory in order to run.  This game does not use expanded memory, 
echo �it is very important that you do not use EMM386.sys in your 
echo �CONFIG.SYS file in your computer. This game needs at least 3,080,192  
echo �bytes of extended memory in order to run. 
echo �
echo �
echo �SUMMARY OF NEW COMMAND KEYS
echo �ALT 1 - ALT 4   Change Music Volume
echo �ALT A           Turn Speech ON/OFF         
pause
echo �PAGEUP/DOWN     Page up/down the ship list in a task force or base.
echo �
echo �DIRECTORY of SHIP CLASSES
echo �
echo �JAPANESE SHIPS
echo �
echo �BB's
echo �
echo �NAGATO CLASS
echo �	Mutsu
echo �
echo �KONGO CLASS
echo �	Kongo, Hiei, Kirishima, Haruna
echo �
echo �YAMATO CLASS
echo �	Yamato
echo �
echo �CV's
echo �
echo �JUNYO CLASS
echo �	Junyo, Hiyo
echo �
echo �RYUJO CLASS
pause
echo �	Ryujo
echo �
echo �SHOKAKU CLASS
echo �	Shokaku, Zuikaku
echo �
echo �ZUIHO CLASS
echo �	Zuiho
echo �
echo �CS's
echo �
echo �CHITOSE CLASS
echo �	Chiyoda, Chitose
echo �
echo �CS MARU CLASS
echo �	Kamikawa Maru
echo �
echo �NISSHIN CLASS
echo �	Nisshin
echo �
echo �CA's
echo �
echo �TAKAO CLASS
echo �	Chokai, Takao, Atago, Maya
pause
echo �
echo �FURUTAKA CLASS
echo �	Furutaka, Kako
echo �
echo �AOBA CLASS
echo �	Aoba, Kinugasa
echo �
echo �NACHI CLASS
echo �	Myoko, Haguro
echo �
echo �MOGAMI CLASS
echo �	Suzuya, Kumano
echo �
echo �TONE CLASS
echo �	Tone, Chikuma
echo �
echo �CL's
echo �
echo �YUBARI CLASS
echo �	Yubari (not in manual, appears in ship briefings list)
echo �
echo �TENRYU CLASS
echo �	Tenryu, Tatsuta
pause
echo �
echo �SENDAI CLASS
echo �	Jintsu, Sendai
echo �
echo �NAGARA CLASS
echo �	Nagara, Yura, Isuzu
echo �
echo �DD's
echo �
echo �KAMAKAZE CLASS
echo �	Asakaze, Oite, Yunagi
echo �
echo �MUTSUKI CLASS
echo �	Uzuki, Mochizuki, Yuzuki,  Mutsuki, Yayoi
echo �
echo �SHIRATSUYU CLASS
echo �	Kawakaze, Umikaze, Suzukaze, Shiratsuyu, Shigure, Murasume, 
echo �	Samidare, Harausme, Yudachi
echo �
echo �KAGERO CLASS
echo �	Arashi, Kagero, Maikaze, Isokaze, Urakaze, Hamakaze, 
echo �	Hagikaze, Tanikaze, Kuroshio, Oyahio, Hatsukaze, Yukikaze, 
echo �	Hayashio, Amatsukaze, Tokitsukaze, Nowaki
pause
echo �
echo �HATSUHARU CLASS
echo �	Yugure, Ariake
echo �
echo �ASASHIO CLASS
echo �	Natsugumo, Minegumo, Asagumo
echo �
echo �FUBUKI CLASS
echo �	Sazanami, Oshio, Shirakumo, Asagiri, Yugiri, Amagiri, 
echo �	Akebono, Uranami, Shikinami, Ayanami, Fubuki, Shirayuki, 
echo �	Hatsuyuki, Murakumo, Isonami
echo �
echo �AKATSUKI CLASS
echo �	Akizuki, Akatsuki, Ikazuchi, Inazuma
echo �
echo �YUGUMO CLASS
echo �	Makinami, Naganami, Yugumo, Akigumo, Kazegumo, Makigumo
echo �
echo �MINEKAZE CLASS  
echo �	Hakaze, Akikaze, Tachikaze
echo �
echo �
echo �
pause
echo �ALLIED SHIPS
echo �
echo �
echo �BB's
echo �
echo �NORTH CAROLINA CLASS
echo �	North Carolina, Washington
echo �
echo �SOUTH DAKOTA CLASS
echo �	South Dakota 
echo �
echo �CV's
echo �
echo �LEXINGTON CLASS
echo �	Saratoga
echo �
echo �YORKTOWN CLASS
echo �	Enterprise, Hornet
echo �
echo �WASP CLASS
echo �	Wasp
echo �
echo �CVE's
pause
echo �
echo �LONG ISLAND CLASS
echo �	Long Island
echo �
echo �CA's
echo �
echo �NEW ORLEANS CLASS
echo �	New Orleans, Minneapolis, San Francisco, Astoria, Quincy, 
echo �	Vincennes
echo �
echo �PORTLAND CLASS
echo �	Portland
echo �
echo �PENSACOLA CLASS
echo �	Salt Lake City, Pensacola
echo �
echo �NORTHAMPTON CLASS
echo �	Chester, Northampton, Chicago
echo �
echo �AUSTRALIA CLASS
echo �	Australia
echo �
echo �CANBERRA CLASS
pause
echo �	Canberra 
echo �
echo �CL's
echo �
echo �BROOKLYN CLASS
echo �	Boise, Helena
echo �
echo �ATLANTA CLASS
echo �	Juneau, Atlanta, San Juan
echo �
echo �PERTH CLASS
echo �	Hobart
echo �
echo �DD's
echo �
echo �PORTER CLASS
echo �	Phelps, Balch, Selfridge, Porter
echo �
echo �FARRAGUT CLASS
echo �	Dewey, Hull, Farragut, Macdonough, Worden, Dale
echo �
echo �BENHAM CLASS
echo �	Benham, Ellet, Wilson, Lang, Sterett, Stack
pause
echo �
echo �BENSON CLASS
echo �	Grayson, Gwin, Aaron Ward, Farenholt, Laffey, Monssen, 
echo �	Buchanan, Lansdowne, Duncan, McCalla, Lardner, Meredith
echo �
echo �BAGLEY CLASS
echo �	Maury, Patterson, Mugford, Ralph Talbot, Jarvis, Bagley, 
echo �	Blue, Helm, Henley
echo �
echo �MAHAN CLASS
echo �	Preston, Mahan, Lamson, Conygham, Shaw, Cushing, Smith
echo �
echo �SIMS CLASS
echo �	Hughes, Anderson, Russell, Morris, Mustin, O'Brien
echo �
echo �FLETCHER CLASS
echo �	Nicholas, Fletcher
echo �
echo �
echo �
echo �
echo �
echo �
pause
echo �J.Young
echo �
echo ���