@echo off
echo _1+
echo ÿ ÿ
echo                     GNBIII:  Fury in the Pacific
echo                          Readme File v.1.2      
echo ÿ
echo ÿ
echo  Introduction
echo  ---------------------------------------------
echo  There have been numerous changes made to the Great Naval Battles code, 
echo  based on bug fixes implemented for GNBIV: Burning Steel.  The fixes
echo  have been worked backwards to provide the 1.2 patch for GNBIII, 
echo  addressing the issues outlined in detail below.
echo ÿ
echo  The greatest change to GNBIII is the upgrade of the game from a 4MB
echo  application to an 8MB application.  We have done a wide survey of 
echo  those that had purchased GNBIII and our other products - the average 
echo  memory compliment as of 10/95 was 8MB.  In upping the memory 
echo  requirements of the game, it has become much more stable, taking care 
echo  of many of the random crashes that existed in the 4MB version.  We 
echo  were trying to fit a size 10 foot in a size 6 shoe.                     
echo ÿ
pause
echo  The decision to go forward with GNBIV was made before GNBIII was 
echo  finished.  We were able to get out one patch for Fury in the Pacific
echo  that took care of many problems; it was planned to release a second
echo  patch to take care of the rest.  Unfortunately due to production 
echo  delays, it made more sense to work on both the revision to GNBIII and
echo  GNBIV simultaneously.  The end result is the same; two programs that
echo  effectively address all concerns with the Great Naval Battles engine
echo  as reported by our internal testers, and through feedback on-line.
echo ÿ
echo  Overall, the feedback on GNBIII is that it would be a great naval sim
echo  if we were able to get rid of the annoying bugs that are in the 
echo  system. We know, hope, and trust that this patch should take care of 
echo  the vast majority of the problems in the earlier versions, and should 
echo  restore faith in the loyal followers of the series.  We're sorry it 
echo  took so long in coming, but it was worth the wait.
echo ÿ
echo          Enjoy,
echo ÿ
echo          John "If it works, it's Magic*" Eberhardt
echo          Producer / SSI
echo ÿ
pause
echo  GNBIII v. 1.2 BUG FIXES
echo ÿ
echo          Ship Damage / Multiple Hits
echo          -------------------------------------
echo          If you continually pummel a ship, it will sink.  In the 
echo          previous version(s), if you scored a hit on an enemy ship 
echo          compartment (as per the damage control screen), any subsequent
echo          hit would not register.  What is worse, an subsequent miss 
echo          would actually serve to *reduce* damage to that compartment.
echo          Needless to say, both are fixed - if you hit the same section 
echo          after it has already been damaged or destroyed, adjacent 
echo          compartments receive damage; and if you miss your target, it
echo          no longer regenerates enemy damage.
echo ÿ
echo          Speed
echo          -------------------------------------
echo          The game speed was incorrectly identified in GNBIII as "x1, 
echo          x2, x3, and x4."  It is actually "Speed 1, Speed 2, Speed 3, 
echo          and Accelerated Speed," the latter being as fast as your 
echo          processor will allow the game to be run.  This is now 
echo          reflected in your speed selections, and should put into better 
echo          perspective the relative speed at which the game operates. 
echo ÿ
pause
echo          Airplanes 
echo          -------------------------------------
echo          By adjusting the game clock and fixing the problem above, the
echo          question of planes running out of fuel while out on missions 
echo          has been addressed.  This should no longer happen, as all 
echo          planes (and ships) will now operate at the same speed.
echo ÿ
echo          Torpedoes
echo          -------------------------------------
echo          Firing angles have been adjusted, and fewer "random shots"
echo          should be seen.  Note that if no solution is possible when 
echo          you attempt to fire a torpedo (i.e. no matter what you do, 
echo          your shot will never reach the target), your shot will go off 
echo          in a direction other than in which you seem to aim.  
echo          To get an idea of what is happening, you are telling your crew 
echo          to fire; they have no target, but you tell them to fire
echo          regardless of the lack of target.  As your crew is green and 
echo          does not want to disobey their commander, they simply fire a
echo          torpedo.
echo          See the general note below on torpedoes for more information.  
echo ÿ
pause 
echo          Running Aground
echo          -------------------------------------
echo          The problem of ships returning to location 0,0 on the map has
echo          been fixed.  
echo ÿ
echo          Random Images and Distortions
echo          -------------------------------------
echo          The sea will no longer appear green when you zoom in to the 
echo          final level.
echo          Random wavy lines when Range Circles are switched on no longer 
echo          appear.
echo ÿ
echo          Random (and not so random) Crashes
echo          -------------------------------------
echo          As mentioned above, upping the engine to an 8MB application 
echo          will eliminate most crashes.  
echo ÿ
echo ÿ
echo ÿ
echo ÿ
echo ÿ
pause 
echo  Miscellaneous Notes / Game
echo  ---------------------------------------------
echo  For increased game performance and speed, leave off range circles and 
echo  other peripheral filters.
echo ÿ
echo  When you select "smoke" for your task force, you will not see a 
echo  graphical representation of the smoke (it slows down the game), but 
echo  the effects do take place.
echo ÿ
echo  Remember that using torpedoes is similar to firing a cannon 
echo  underwater; your chances of hitting targets is usually mild at best.  
echo  The closer you are to your desired target, as well as the speed at 
echo  which both the target and firing ships are moving will influence your 
echo  targeting effectiveness.  Hey - they ain't Photon torpedoes.
echo ÿ
echo ÿ
echo ÿ
echo ÿ
echo ÿ
echo ÿ
echo ÿ
pause 
echo  Miscellaneous Notes / Scenario Editor
echo  ---------------------------------------------
echo  If you create a scenario with more than 50 ships per side, the game 
echo  engine may slow down tremendously, depending on your system. To 
echo  prevent this from happening, limit scenarios to about 50 ships per 
echo  side.
echo ÿ
echo  Scenarios are listed within the game by any description given them.  
echo  Before saving a scenario you create using the editor, write a brief 
echo  description in the Scenario Description screen.
echo ÿ
echo ÿ
echo ÿ
echo  Last Updated 11/17/95
echo ÿ
echo ÿ
echo            "Magic" is a reference to the American codebreakers in the
echo            Pacific, specifically the early efforts to break the
echo            Japanese codes.
echo ÿ

pause

echo  Version 1.1 Fixes
echo  ÿ 
echo   1)Main guns will now fire & reload at a normal rate.
echo   2)Torpedo duds have been reduced.
echo   3)Game will no longer crash while exiting the Sub-Ops Station.
echo   4)Bombing bases by aircraft have been improved.
echo   5)B-26 bomber will now have sufficent fuel for missions.

echo ÿ

echo  Last Changed on 3/10/95
echo ÿ 
echo ÿ  ÿ
echo ÿ ÿ
echo ÿÿ
pause

echo ÿ
echo ÿ
echo GNB3 Readme File [Original]
echo ÿ
echo Last Changed on 1/18/95
echo ÿ
echo ÿ
echo ÿ
echo GNB3 RULES UPDATE & CLARIFICATIONS       1/18/95
echo ÿ
echo Scenario Description:
echo ÿ
echo Battle of Vella Lavella, October 6th, 1943
echo ÿ
echo During an attempt to disrupt Japanese efforts to move troops in 
echo the "Slot" area, Captain Walker of the USN encountered the destroyers 
echo (DDs) of Admiral Ijuin. Torpedoes were launched from both sides in 
echo the ensuing battle, and the DD Yugumo sank, as did the USN ships 
echo Selfridge and O'Bannon.
echo ÿ
echo American Objectives: Sink as many enemy ships as possible.
echo Japanese Objectives: Sink as many enemy ships as possible.
echo ÿ
pause
echo Rules Additions:
echo ÿ
echo Land Combat
echo Land combat only occurs if there are enemy troops present at one of 
echo your bases or if you land troops at an enemy base. A large colored 
echo "X" over the base means combat can take place at that location. To 
echo unload troops at an enemy base, sail all transports to the small of 
echo the enemy color (red for Japanese, blue for Allied). Transports 
echo arriving at these locations automatically begin to unload. Left-click 
echo on the flag of the base to be attacked and the Report window opens 
echo containing the Base Report, Orders, and Friendly Forces panels. The 
echo Base Report window lists the status of the enemy base. The Friendly 
echo Forces panel shows the amount of supplies and number of troops in 
echo combat. The Orders panel offers four options for your land forces:
echo ÿ
echo DEFEND
echo Your troops hold their positions. This option consumes the least 
echo amount of supplies.
echo ÿ
echo PROBE
echo Your troops make small probing attacks and are likely to inflict 
echo only minor casualties. This order increases the amount of supplies 
echo consumed by your troops.
pause
echo ÿ
echo ATTACK
echo The troops launch a major attack; this option greatly increases 
echo casualties. Supplies are also used at a greater rate.
echo ÿ
echo OFFENSIVE
echo This is an all out attack on the enemy; the losses on both side 
echo increase drastically. This option will consume the most supplies. 
echo It is unlikely that Offensives can be sustained for long. Once all 
echo enemy troops are eliminated in a base location, the base ownership 
echo changes. Any remaining friendly troops become the garrison for 
echo that base.
echo ÿ
echo Scenario Editor:
echo When designing a scenario, at least one base and one ship must be 
echo assigned to each side in order for the scenario to be viable.
echo We also suggest that you avoid building scenarios with more than
echo 60 ships per side. Having more than 60 ships per side, may slow
echo down the game.
echo 
echo Customizer Settings:
echo 
echo In the Tactical screen, the setting for Reloads is for your ship's 
pause
echo main guns. They are not for the torpedoes, as stated in the manual.
echo ÿ
echo ___
