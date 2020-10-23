@echo off
echo ÿREADME File for Great Naval Battles: North Atlantic 1939-1943
echo ÿIBM  Version 1.2
echo ÿFebruary 17, 1993
echo ÿ
echo ÿAny information included under GNB Version 1.2 precludes any and all
echo ÿprevious references. I would also like to thank all of the people on
echo ÿCompuserve, GEnie and Prodigy who sent me notes, and the people who
echo ÿcalled or wrote letters, for their contribution to the game.
echo ÿ
echo ÿThis document is broken up into four sections: 1. All of the bug
echo ÿfixes for GNB Version 1.2; 2. All of the features and bug fixes
echo ÿmade to GNB Version 1.1; 3. Answers to many commonly asked
echo ÿquestions about the game; 4. The GNB Version 1.0 Notes. Note:
echo ÿInformation in the first and second sections may supercede statements
echo ÿmade in the fourth section.
echo ÿ
echo ÿWARNING!!!
echo ÿ----------
echo ÿGreat Naval Battles Version 1.2 requires 724K of EMS instead of the
echo ÿ700K recommended in the User's Guide. To correct this problem, change
echo ÿthe following line in your CONFIG.SYS file:
echo ÿ
echo ÿDEVICE=C:\DOS\EMM386.EXE 724
pause
echo ÿ                         ---
echo ÿ
echo ÿ
echo ÿ
echo ÿ1. Version 1.2 Bug Fixes
echo ÿ========================
echo ÿ
echo ÿMost of the Version 1.2 changes are more subtle in nature. The major
echo ÿimprovements are as follows:
echo ÿ
echo ÿTF Ops - You can no longer "Shadow" a ship that you cannot see.
echo ÿ
echo ÿGunnery - We have worked out the bugs related to running out of ammo,
echo ÿguns on local control, damaged directors, and damaged guns. The
echo ÿturret no longer tracks if you lose the gun's barbette.
echo ÿ
echo ÿTorpedo - You can no longer get an unlimited supply of torpedoes if
echo ÿyou lose one of your mounts.
echo ÿ
echo ÿAir Ops - Spotting planes no longer use a carrier staging area
echo ÿgraphic.
echo ÿ
echo ÿDamage Control - We have found and fixed the "Empty Box" bug. This is
pause
echo ÿwhen a section gets damaged and turns into an empty damage box. Also,
echo ÿthe computer AI will now consider flooding damage as more important
echo ÿto fix than fire damage and the computer now does a better job of
echo ÿcounterflooding a ship.
echo ÿ
echo ÿTactical AI - We have been tweaking with the AI to make the computer
echo ÿfight a better battle. The ships will initially try to maintain a
echo ÿformation at the beginning of a battle instead of individually
echo ÿmaneuvering. The target selection system has been improved to select
echo ÿa more appropriate target.
echo ÿ
echo ÿReplay - We have found and fixed a few more problems relating to
echo ÿreplaying battles. The system shows the correct amount of damage now,
echo ÿit runs faster, and counterflooding boxes now clear when the water is
echo ÿpumped out.
echo ÿ
echo ÿBarents Sea Operation - There are no longer any tankers.
echo ÿ
echo ÿ"P" Class Pocket Battleship - The game has a [2x3] main gun system
echo ÿinstead of a [3x2] system. (Super Ships)
echo ÿ
echo ÿAtlanta Class Cruiser - All of this class has only 12 guns. (America)
echo ÿ
pause
echo ÿFletcher Class Destroyer - The torpedo tube graphic in the Damage
echo ÿControl screen shows only four tubes instead of five. (America)
echo ÿ
echo ÿArming Distances for ship-based Torpedoes:
echo ÿ    Type     Range      Arming Distance
echo ÿ    ====     ======     ===============
echo ÿ  British
echo ÿ    Mk I     15,000     1,580
echo ÿ             20,000     1,350
echo ÿ    Mk IV     8,000     1,760
echo ÿ             10,000     1,580
echo ÿ             13,500     1,130
echo ÿ    Mk VII   16,000     1,490
echo ÿ    Mk X      3,280     2,120
echo ÿ              8,750     1,620
echo ÿ             13,120     1,310
echo ÿ  German
echo ÿ    GVIIaT1   6,500     1,980
echo ÿ  American
echo ÿ    Mk VIII   5,000     2,030
echo ÿ              7,000     1,850
echo ÿ
echo ÿ
pause
echo ÿ
echo ÿ
echo ÿ2. Version 1.1 Features and Bug Fixes
echo ÿ=====================================
echo ÿJanuary 19, 1993
echo ÿ
echo ÿAdded Commands
echo ÿ--------------
echo ÿ[ESC](in combat) = If your game ever freezes up, hitting this key will
echo ÿmake the game move again. (This is VERY VERY rare.)
echo ÿ
echo ÿAlt-A = Resets your mouse driver, if your mouse stops working during
echo ÿthe game.
echo ÿ
echo ÿAlt-R(in replay) = Turns the messages on and off.
echo ÿ
echo ÿAlt-Q(in replay) = Quits the replay.
echo ÿ
echo ÿGeneral
echo ÿ-------
echo ÿIf the game goes back to DOS after playing the Introduction instead
echo ÿof running the game, try running GNBNA386.EXE.
echo ÿ
pause
echo ÿThe game should now set up with all SoundBlasters, SBPros, and
echo ÿThunderboards. Just reconfigure the game using the SOUND.EXE program.
echo ÿ
echo ÿWe have improved the mouse sampling rate.
echo ÿ
echo ÿThe sound system has undergone some improvement:
echo ÿSound effects now occur at "X2" speed as well as "NORMAL" speed.
echo ÿSecondary Guns are now softer.
echo ÿOther ship fire is now softer.
echo ÿYour ship being hit now has #1 priority with no clipping.
echo ÿ
echo ÿThe Game will now allow you to reinstall the game if you haven't
echo ÿdeleted the old game and subdirectories.
echo ÿ
echo ÿScenarios
echo ÿ---------
echo ÿThe Hipper is no longer a Bismarck class ship in the Jutland II
echo ÿscenario.
echo ÿ
echo ÿCampaign
echo ÿ--------
echo ÿAbstract naval actions no longer throw ships immediately into repair.
echo ÿDamaged ships end up in Liverpool/Kiel and are left in the port area.
pause
echo ÿ
echo ÿThe "Gap Patrol Pool" should work properly.
echo ÿ
echo ÿThe Graf Spee is no longer "ABROAD" in the South Atlantic.
echo ÿ
echo ÿTask Forces do not go up into Newfoundland anymore.
echo ÿ
echo ÿIn tactical combats during the campaign, you will always get a prompt
echo ÿto leave a battle every hour. However, there is a possibility that
echo ÿyou cannot escape.
echo ÿ
echo ÿWe no longer sink unseaworthy ships after a combat.
echo ÿ
echo ÿAll ships surviving a combat will have one of each of the following
echo ÿeven if all of them were destroyed during the combat: Steering Gear,
echo ÿBoiler, Engine, Rudder, Shaft, and matching Propeller.
echo ÿ
echo ÿTankers no longer have aircraft.
echo ÿ
echo ÿAir attack circles should now reflect the actual ranges of the
echo ÿattacking planes.
echo ÿ
echo ÿThe AI player now repairs damaged ships on Escort Duty. It no longer
pause
echo ÿsends damaged ships to sea as escorts.
echo ÿ
echo ÿThe Convoy Escort has changed slightly. If you don't have enough
echo ÿescort ships, you will start losing ships to U-Boat attacks.
echo ÿ
echo ÿThe "Join" command now works properly and the error message now
echo ÿworks.
echo ÿ
echo ÿShip Aircraft losses are now replaced when repairing in port.
echo ÿ
echo ÿAircraft no longer multiply when making air strikes.
echo ÿ
echo ÿYou can no longer make multiple CV TFs.
echo ÿ
echo ÿAircraft replacement should now work properly.
echo ÿ
echo ÿConvoys will now add CVs and CAs. You should be able to get 1CV, 1BB,
echo ÿ1CA, and 2DDs into a convoy.
echo ÿ
echo ÿBase aircraft should be a little more effective (especially if you
echo ÿare the German player.)
echo ÿ
echo ÿThe "IN USE" display in repair has been eliminated.
pause
echo ÿ
echo ÿThe British TF AI has been improved.
echo ÿ
echo ÿDamaged ships from strategic air strikes are no longer automatically
echo ÿdumped into repair.
echo ÿ
echo ÿDestroyers should lose 40 percent more efficiency than Battleships
echo ÿduring the same time, and Cruisers should lose 10 percent more than
echo ÿBattleships.
echo ÿ
echo ÿWeather conditions will effect the loss of efficiency more.
echo ÿ
echo ÿOnly one TF will be allowed to "SHADOW" another TF.
echo ÿ
echo ÿLarger TFs should be easier to spot.
echo ÿ
echo ÿFreshly constructed ships now start at 75 percent efficiency. [To
echo ÿsimulate the lack of preparedness of the ship and crew]
echo ÿ
echo ÿSingle ship British TFs should no longer be created and disbanded in
echo ÿUlster during the Campaign game.
echo ÿ
echo ÿThe German DD Thiele no longer produces oil. [Fuel goes up, not down]
pause
echo ÿ
echo ÿThe "TF Display" option from "Reports" should work properly under all
echo ÿcircumstances.
echo ÿ
echo ÿThe "CRUISE" button on the "TF Orders" should work all of the time.
echo ÿ
echo ÿCombat General
echo ÿ--------------
echo ÿ"Form" and "Shadow" should both work as described in the manual.
echo ÿ
echo ÿShips no longer give DDs #1 priority in an attack over all other
echo ÿships.
echo ÿ
echo ÿShips no longer "Vanish" in the Binoc view.
echo ÿ
echo ÿThe computer will now carry out torpedo attacks in the "AUTO TORP"
echo ÿmode.
echo ÿ
echo ÿThe game no longer slows down when two ships are on top of each other.
echo ÿ
echo ÿCarrier planes now launch their torpedoes at the proper range and
echo ÿfrom the proper angles.
echo ÿ
pause
echo ÿAI controlled ships maneuver a lot better, and no longer want to run
echo ÿaway all of the time.
echo ÿ
echo ÿShips on a automatic torpedo run no longer have a wildly swinging
echo ÿbearing pointer on the compass gauge in the Navigation Station.
echo ÿ
echo ÿYou can no longer get a Beaufort Scale of 11 in a combat.
echo ÿ
echo ÿThe rudder works properly after a tight turn.
echo ÿ
echo ÿSunken ships can no longer take Additional hits.
echo ÿ
echo ÿAir Operations
echo ÿ--------------
echo ÿThe Air Ops station has been changed. Now, the button starts by saying
echo ÿ"READY". When you click the button, the timer will start for readying
echo ÿthe plane(s) for launch and the button will say, "ARMING". Once the
echo ÿplane(s) are ready, the button changes to "LAUNCH" and the rest of
echo ÿthe Air Ops station works as the manual. This allows you to choose
echo ÿwhen and if you want to launch these vulnerable and highly explosive
echo ÿplanes, or keep them where they are safe. The readying time has also
echo ÿbeen increased to 30 minutes, and once a seaplane has been launched,
echo ÿthere is a chance that it will be lost when you try to recover it
pause
echo ÿ(based on the weather.)
echo ÿ
echo ÿSpotting planes effect ranging and holding a targets as well as
echo ÿreducing ship minuses due to multiple ship fire.
echo ÿ
echo ÿThe computer will now use seaplanes in combat.
echo ÿ
echo ÿDamage Station
echo ÿ--------------
echo ÿFires are now more deadly.
echo ÿ
echo ÿWe now use a fire extinguisher icon when a damage control party is
echo ÿfighting a fire.
echo ÿ
echo ÿThe order in which flooded compartments are picked by AI to be pumped
echo ÿis now more intelligent.
echo ÿ
echo ÿThe situation where a ship that gets hit below the waterline by
echo ÿeither a shell or a torpedo will actually be damaged on the other
echo ÿside has been fixed.
echo ÿ
echo ÿShips should now recover speed after being repaired in combat.
echo ÿ
pause
echo ÿWe have reduced the number of rudder and propeller hits from
echo ÿshellfire.
echo ÿ
echo ÿGunnery Stations
echo ÿ----------------
echo ÿSecondary Guns work properly now.
echo ÿ
echo ÿThe hit percentage Number now has more factors included in the number.
echo ÿ
echo ÿSmall caliber shells no longer do too much damage.
echo ÿ
echo ÿCenter stability will now affect gunfire. Smaller ships will not be as
echo ÿstable a gun platform and therefore will not be as accurate.
echo ÿ
echo ÿThe range number should no longer jump by 2-3000 yds. at a time.
echo ÿ
echo ÿThe computer will now turn off the front guns if you switch from
echo ÿ"BSIDE" to "AFT" and select a target.
echo ÿ
echo ÿTorpedo Station
echo ÿ---------------
echo ÿTorpedoes will no longer only travel to the short range, even if set
echo ÿat medium or long range.
pause
echo ÿ
echo ÿDDs no longer have unlimited torpedoes.
echo ÿ
echo ÿTorpedoes no longer go off at a right angle at 300kts.
echo ÿ
echo ÿReplay
echo ÿ------
echo ÿReplay should now load and save properly. However, your old replay
echo ÿfiles may or may not work.
echo ÿ
echo ÿThe replay should now accurately display the shell hits and damage.
echo ÿNote:  some of the displays do not work because storing all of the
echo ÿdata on the ship would slow down the game, so we selectively record
echo ÿonly things that we thought were important. For instance, this means
echo ÿthat we don't track damage control parties.
echo ÿ
echo ÿ
echo ÿ
echo ÿ
echo ÿ3. Answers to Commonly Asked Questions
echo ÿ======================================
echo ÿWhy isn't the German Carrier, Graf Zeppelin, in Super Ships?
echo ÿ------------------------------------------------------------
pause
echo ÿ    There are a lot of reasons that we did not add the Graf Zeppelin
echo ÿto the game: 1) Due to Goering's dislike and mistrust of the German
echo ÿnavy, a naval arm of the Luftwaffe was never developed. In fact,
echo ÿGoering did his best to delay design work on naval versions of combat
echo ÿplanes during the war. The Graf Zeppelin might have been finished,
echo ÿbut she wouldn't have had planes or pilots. 2) Only one carrier was
echo ÿbeing built. Even if she was functional, she couldn't have done much
echo ÿalone. 3) Carrier operations weren't as important in the North
echo ÿAtlantic. The visibility was poor and the weather was bad. 4) Carrier
echo ÿoperations are a minor part of the game. We thought that people would
echo ÿenjoy improvements in the game more than adding a German carrier and
echo ÿadd all of the extra stuff to make carrier vs. carrier operations
echo ÿwork.
echo ÿ
echo ÿWhy were Hull and Wilhelmshaven removed?
echo ÿ----------------------------------------
echo ÿ    The Computer plotting and AI got confused when these ports were
echo ÿadded. We increased other port facilities to compensate for the
echo ÿmissing ports.
echo ÿ
echo ÿCan a ship be captured?
echo ÿ-----------------------
echo ÿ    No.
pause
echo ÿ
echo ÿWhat is the Scuttle button used for?
echo ÿ------------------------------------
echo ÿ    It sinks the ship. I think the question should have been: WHY
echo ÿwould you want to scuttle a ship? I don't know. If you want to get
echo ÿrid of a ship, this does it. There is no NEED to scuttle a ship.
echo ÿ
echo ÿWhy is there no distinction between the CAs?
echo ÿ--------------------------------------------
echo ÿ    We don't have German Light Cruisers, and the British "Light"
echo ÿCruisers were sometimes bigger than their Heavy Cruisers. We didn't
echo ÿthink it was necessary to make that distinction. In the Pacific game,
echo ÿwe will have Light, Heavy and Light AA categories.
echo ÿ
echo ÿWhat is the "Captain's View"?
echo ÿ-----------------------------
echo ÿ    All of the Stations comprise the Captain's View. At one time we
echo ÿhad a consolidated screen, but we took some of the information and
echo ÿmoved it to the Fleet Screen making a consolidated screen seem too
echo ÿredundant.
echo ÿ
echo ÿWhy did I get a "Fire Spreads" message on my undamaged ship?
echo ÿ------------------------------------------------------------
pause
echo ÿ    Even though a shell does not penetrate the ship, it can still
echo ÿdamage and set fire to structures on the ship, like secondaries.
echo ÿ
echo ÿWhere are the troop convoys mentioned in the manual?
echo ÿ----------------------------------------------------
echo ÿ    Originally, we wanted to have separate Merchants, Oilers, and
echo ÿTroop Transports (the graphics were even done.) However, space
echo ÿlimitations forced us to not add these ships and turn all convoys
echo ÿinto Generic Convoys.
echo ÿ
echo ÿHow do you use your Base planes for Recon, Patrol?
echo ÿ--------------------------------------------------
echo ÿ    You don't. The computer automatically sends out your search
echo ÿplanes for you. The only planes you control are the attack planes.
echo ÿ
echo ÿWhy aren't there fire and near miss graphics in overhead view of the
echo ÿgame?
echo ÿ--------------------------------------------------------------------
echo ÿ    Although done, there was not enough memory to fit these elements
echo ÿinto the game.
echo ÿ
echo ÿWhy are my ship graphics not as good as the ones on the box?
echo ÿ------------------------------------------------------------
pause
echo ÿ    I have heard this question a couple of times and have concluded
echo ÿthat the people who have this problem are running the non-EMS version
echo ÿof the game. The non-EMS version of the game uses a separate smaller
echo ÿ(and much less detailed) version of all of the ships (PS. the game
echo ÿruns much slower.) If the version number does not have an E after
echo ÿit, you are NOT running the EMS version of the game. Refer to the
echo ÿUser's Guide to get the EMS to work. Also, the slower the machine,
echo ÿthe less 3D graphics the computer displays. This is done for speed.
echo ÿ
echo ÿWhat is "SHADOW" and how does it work?
echo ÿ--------------------------------------
echo ÿ    Unfortunately, there are actually three different types of
echo ÿ"SHADOW" in the game. One is in the Admiralty view, second is the in
echo ÿthe Fleet view and the last is in the Air Ops Station. They are not
echo ÿrelated. "SHADOW" in Admiralty means, "Set this TF to follow the
echo ÿenemy TF, so that you can keep an eye on it instead of fighting it."
echo ÿIn the Fleet view it means, "Mirror the actions of the enemy ship,
echo ÿbased upon the offset that you chose with the marker." In the Air Ops
echo ÿStation it means, "Follow the selected enemy ship and feed gunnery
echo ÿinformation to our ship." There are no restrictions on the use of
echo ÿ"SHADOW" in either of the combat stations, but there are restrictions
echo ÿin the Admiralty view. The Germans and British convoys cannot
echo ÿ"SHADOW". You also must be as fast or faster than the enemy TF to
pause
echo ÿ"SHADOW" it.
echo ÿ
echo ÿHow does the ship's gunnery system work and what does the hit percent mean?
echo ÿ---------------------------------------------------------------------------
echo ÿ    The hit percentage number presented on the main gunnery screen
echo ÿseems to have caused some confusion because of its inaccuracy. The
echo ÿusual following comment is "Why can't the number be an accurate
echo ÿestimate of the guns chance to hit the target?" The following
echo ÿdiscussion will attempt to address this question by giving some
echo ÿinsight into the game's gunnery system.
echo ÿ
echo ÿ    The current number is calculated by using the most significant
echo ÿfactors and really gives a relative guide to gunnery accuracy, 1
echo ÿpercent obviously being a poorer shot than 15 percent. The actual
echo ÿpercentage is quite accurate in the middle range bands but breaks
echo ÿdown at extreme long or close ranges. The lower the number the more
echo ÿthe player must search for ways to improve his positive gunnery
echo ÿfactors and minimize his negative factors. (list of these factors
echo ÿis included later)
echo ÿ
echo ÿ    The problem stems from the use of a simulation system for the
echo ÿgunnery rather than the more traditional wargame approach. In the
echo ÿtraditional system the firing ships salvo is modified by the
pause
echo ÿappropriate factors and the result is a number of hits or the chance
echo ÿof a single hit. This approach is used in games with turns covering
echo ÿperhaps 15 seconds to a minute and produces good statistical results.
echo ÿThe problem with this system when applied to a real time simulation
echo ÿis mostly connected with shell flight time. At extreme range a shell
echo ÿtakes over 60 seconds to reach its target. The target ship can travel
echo ÿconsiderable distance in that time and this is usually factored into
echo ÿwargames by crew quality and other judgement type variables. In a
echo ÿsimulation the player takes the role of the ships commanding officer
echo ÿand should have the ability to react to enemy gunnery in the same way
echo ÿthat real naval officers did. The other problem often caused by the
echo ÿwargame approach is that it must use special rules to calculate
echo ÿwhether a salvo will hit other ships in the area of the target ship.
echo ÿ
echo ÿ    The solution used in GNBNA was to simulate the mechanisms
echo ÿactually used and allow the player the greatest possible influence on
echo ÿthe factors which affect gunnery. The process of firing main guns at
echo ÿdistances up to 20 miles starts with estimating several factors about
echo ÿthe target ship: its speed, course and range. The ship is equipped
echo ÿwith various types of equipment to determine these factors. These
echo ÿestimates are fed into a simple computer along with details of the
echo ÿships speed and course and a firing solution is prepared. This is
echo ÿtranslated into specific gun elevations and directions. The usual
pause
echo ÿprocess included several spotting salvos of only one gun per turret
echo ÿstaggered over time to provide more data on range.
echo ÿ
echo ÿ    GNBNA calculates the same estimated numbers by using the quality
echo ÿof the individual ships equipment and applying random factors
echo ÿappropriate to the level of information the firing ship would have.
echo ÿThe result of all of these calculations is the location of the enemy
echo ÿship when the shells will get there (remember shell flight times can
echo ÿbe up to a minute). The salvo is then fired at that location, the
echo ÿsalvo will scatter depending upon the range and individual shell
echo ÿmanufacturing differences, the result is an impact area along the
echo ÿpath of the shells. The first few salvos at long range will probably
echo ÿbe off-target but the gunnery system will adjust and refine its
echo ÿestimates. The chances of hitting the target ship is therefore mostly
echo ÿbased on this estimating process. However, if the target changes
echo ÿcourse/speed he may not be at the predicted position. The shells
echo ÿscatter during flight and are individually plotted on the ocean and
echo ÿthen this position is compared to ALL ships to see if they are hit.
echo ÿ
echo ÿ    The simulation of the gunnery process allows for detailed
echo ÿimplementation of factors affecting gunnery and produce realistic
echo ÿresults. The factors affecting gunnery are discussed below. The
echo ÿproblem of the hit percentage number can now be seen, the computer
pause
echo ÿcannot predict the actions of the enemy ship and therefore cannot
echo ÿgive more than a approximate chance of hitting.
echo ÿ
echo ÿGunnery factors.
echo ÿ
echo ÿ1. Enemy course/speed change.
echo ÿ
echo ÿThe enemy course/speed change will really only be significant at
echo ÿlonger ranges because of the shell flight time factors discussed
echo ÿabove.
echo ÿ
echo ÿ2. Number of spotting salvo's fired at same ship.
echo ÿ
echo ÿThe spotting salvo's give much better feedback to the estimating
echo ÿprocess than do other salvo types and therefore produce an accurate
echo ÿfiring solution quicker, however they also scatter shells over a much
echo ÿgreater area and reduce the chances of any single shell impacting the
echo ÿtarget ship. It is best to switch to Full fire once the shells are
echo ÿlanding closely around the target ship.
echo ÿ
echo ÿ3. Number of non-spotting salvo's fired at same ship.
echo ÿ
echo ÿNon-spotting salvo's are more difficult to estimate and therefore
pause
echo ÿwill reduce the accuracy of the firing solution after several have
echo ÿbeen fired, therefore once shells stop falling around the target ship
echo ÿswitch back to spotting.
echo ÿ
echo ÿ4. Number of shells in salvo.
echo ÿ
echo ÿThe number of shells fired with an accurate firing solution
echo ÿdetermines the number of hits that are possible, ships with more guns
echo ÿwill probably get more hits, a simple factor but often overlooked.
echo ÿ
echo ÿ5. Number of ships firing at same target.
echo ÿ
echo ÿIf more than one ship is firing at the same target, this will degrade
echo ÿthe accuracy of all the firing ships. The gunnery officers cannot
echo ÿdetermine which shells are from which ships and therefore produce
echo ÿless accurate estimates. If the ship has a spotting plane in the air
echo ÿand a working radio, the ship being shadowed by the plane will be
echo ÿtargeted without the multiple ship penalty.
echo ÿ
echo ÿ6. Firing ship under fire.
echo ÿ
echo ÿIf the firing ship is under fire, it will not be able to fire as well
echo ÿbecause the gunnery officers may not be able to spot splashes etc.
pause
echo ÿbecause of obscuring water-spouts thrown up by enemy gunnery.
echo ÿ
echo ÿ7. Director quality.
echo ÿ
echo ÿThe director quality is an abstraction of the firing ships gunnery
echo ÿestimating/control system and governs the speed at which an accurate
echo ÿsolution is gained.
echo ÿ
echo ÿ8. Firing ship rudder position/listing.
echo ÿ
echo ÿThe sharper the firing ship turns, the more impact it has on the
echo ÿgunnery systems (usually mounted high on the ship and therefore
echo ÿaffected by listing/turning).
echo ÿ
echo ÿ9. Radar.
echo ÿ
echo ÿRadar became available during the period of the game and allowed much
echo ÿquicker estimating, thereby reducing the estimating process
echo ÿconsiderably.
echo ÿ
echo ÿWhat does a spotting plane do?
echo ÿ------------------------------
echo ÿ    A spotting plane does a variety of things in regards to gunfire:
pause
echo ÿIt speeds up the target refinement process, it increases the time
echo ÿthat the guns can remain firing without getting out of sync, and it
echo ÿnegates the "number of ships firing at the same target" penalty.
echo ÿ
echo ÿHow do "NRRW" and "WIDE" work?
echo ÿ------------------------------
echo ÿ    "NRRW" makes a tight spread of shells that can be useful at close
echo ÿranges, if you have a good range on a target. "WIDE" makes a wide
echo ÿspread that can be useful at very long ranges and can be used to hit
echo ÿmultiple ships if the ships are close together.
echo ÿ
echo ÿDoes the computer use "NRRW" or "WIDE"?
echo ÿ---------------------------------------
echo ÿ    Yes, it does. However, it only does it when it is absolutely sure
echo ÿthat the setting will work better than "FULL".
echo ÿ
echo ÿWhy does the Main Gun stop firing when the Fore or Aft Ammo runs out?
echo ÿ---------------------------------------------------------------------
echo ÿ    Due to the way that targeting is determined, the computer cannot
echo ÿfire a Broadside with one of the sides out of ammo. If you switch to
echo ÿFORE or AFT and then pick a target, the guns will fire again.
echo ÿ
echo ÿHow do you use the Torpedo Station?
pause
echo ÿ-----------------------------------
echo ÿ    Torpedoes can be fired from this screen using two methods. First,
echo ÿyou can look at where you want to fire the torpedoes, guess the point
echo ÿwhere you wish to fire, and then set the direction using the
echo ÿPORT/SRBD and FA(firing angle) settings, set the number, the spread
echo ÿsize and the running time(if it has multiple ranges) of the
echo ÿtorpedoes, and then fire. Or you can use the Targeting computer to
echo ÿgive you an estimate of the proper firing angle to the target you
echo ÿhave selected, and then set the FA, torpedoes and fire.
echo ÿ
echo ÿIs there a minimum range for torpedoes?
echo ÿ---------------------------------------
echo ÿ    Yes. It is about 1000 yds. or 80 seconds running time.
echo ÿ
echo ÿWhat do the convoy names mean?
echo ÿ------------------------------
echo ÿName    Route           Name meaning
echo ÿ
echo ÿHX      USAUK           Homeward Bound from Halifax
echo ÿOB      UKUSA           Outward Bound from USA
echo ÿHG      MEDUK           Homeward Bound from Gibraltar
echo ÿOG      UKMED           Outward Bound to Gibraltar
echo ÿPQ      UKUSSR          No meaning
pause
echo ÿQP      USSRUK,         No Meaning
echo ÿSL	AFRICAUK,	Homeward bound from Sierra Leone
echo ÿOS	UKAFRICA,	Outward bound to Sierra Leone
echo ÿ
echo ÿHow does scoring work?
echo ÿ    In the combats:
echo ÿ        Greater than 500  is a DRAW
echo ÿ        500-1999  is a TACTICAL VICTORY
echo ÿ        2000-4999  is a MAJOR VICTORY
echo ÿ        5000 or Greater  is a DECISIVE VICTORY
echo ÿ
echo ÿThe points for each ship are generated by the number and type of
echo ÿguns, armor, radar, fire control, engines, etc. Damage points are
echo ÿdetermined by the systems that have been destroyed during the combat.
echo ÿIf a ship is destroyed, you get all of the points.
echo ÿ
echo ÿ    In the campaigns/operations:
echo ÿ        BRITISH POINTS / GERMAN POINTS
echo ÿ        Greater than 1:1  is a DECISIVE GERMAN VICTORY
echo ÿ        1:1 to 3:1  is a MARGINAL GERMAN VICTORY
echo ÿ        4:1 to 7:1  is a MARGINAL BRITISH VICTORY
echo ÿ        8:1 or Greater  is a DECISIVE BRITISH VICTORY
echo ÿ
pause
echo ÿThe British get 10 points for every non-scattered convoy that arrives
echo ÿat its destination. The Germans get 120 points for each merchant that
echo ÿis sunk. And both sides get their combat points.
echo ÿ
echo ÿChanges to Scoring system from v1.0: Merchants are now worth 20
echo ÿpercent more points to the Germans, and corrections to the ship point
echo ÿcalculations result in new values to all ships.
echo ÿ
echo ÿ
echo ÿ
echo ÿ
echo ÿ4. IBM  Version 1.0 Notes
echo ÿ=========================
echo ÿSeptember 22, 1992
echo ÿ
echo ÿ    Enclosed are the final notes listing changes and new features for
echo ÿthe game:
echo ÿ
echo ÿ1) This is NOT a Windows game! If you use Windows, we recommend that
echo ÿyou run this game from outside of Windows. If you still want to run
echo ÿthis game, set your .PIF file for 100 percent usage and make sure you
echo ÿhave SMARTDRV.SYS loaded. It would also help to have at least 4 Meg
echo ÿof RAM on a 386/40 or a 486/33. We make NO guarantees that this game
pause
echo ÿwill run under Windows.
echo ÿNote:  SMARTDRV.SYS will help the speed of this game even without
echo ÿWindows.)
echo ÿ
echo ÿ2) There are two memory profiles for this game, the EMS and NOEMS
echo ÿversions. This program auto-senses which version is appropriate for
echo ÿyour machine. If the program cannot sense your EMS or thinks you have
echo ÿEMS when you don't, you can override the program by typing GNBNA EMS
echo ÿ[Enter] for the EMS version or GNBNA NOEMS [Enter] for the NOEMS
echo ÿversion.
echo ÿ
echo ÿ3) If you wish, you can avoid the introduction by typing GNBNA386
echo ÿ[Enter] instead of GNBNA.
echo ÿ
echo ÿ4) Some of the ships don't exactly match the manual. The following
echo ÿdifferences have been made to the game
echo ÿ
echo ÿ    a) There is only one ship type for each class. Therefore, any
echo ÿ    aberrations listed in the manual are not in the game. For
echo ÿ    instance, the Tirpitz will have no torpedoes, but the Gneisenau
echo ÿ    will have torpedoes.
echo ÿ
echo ÿ    b) There is only one Carrier type in the game. It has a speed of
pause
echo ÿ    30 knots, can hold 12 airplanes, is 660 ft. long, and has no main
echo ÿ    or secondary guns.
echo ÿ
echo ÿ    c) The number of airplanes may not match the number of planes
echo ÿ    listed in the manual. This is due to inconsistencies between the
echo ÿ    number of possible airplanes vs. the number of operational
echo ÿ    airplanes.
echo ÿ
echo ÿ    d) All of the ship lengths in the game are in 30 foot increments,
echo ÿ    so they may not match the manual.
echo ÿ
echo ÿ    e) The improved Z class German destroyer has 5, not 4 guns. The
echo ÿ    foreward turret has 2 guns.
echo ÿ
echo ÿ    f) There is an armor listing for secondaries on the Hood. Since
echo ÿ    there are no secondaries, this is an error.
echo ÿ
echo ÿ    g) We are not using casemate guns in the game. They had poor
echo ÿ    angles of fire, were highly slow and inaccurate, and could not be
echo ÿ    used in rough weather. The British during the war removed most of
echo ÿ    the casemate guns on the few ships that still had them.
echo ÿ
echo ÿ    h) The Hipper class secondary guns have not been included in the
pause
echo ÿ    game. This is because they were, in reality, AA guns and did not
echo ÿ    carry the proper ammo or have the proper fire control to shoot at
echo ÿ    ships.
echo ÿ
echo ÿ    i) The Nelson class battleship does not have the two foreward
echo ÿ    below waterline torpedo tubes. They were only used once and were
echo ÿ    an abysmal failure. (Battleships cannot be maneuvered like a
echo ÿ    submarine.)
echo ÿ
echo ÿ    j) The Renown class battlecruiser does not have secondaries for
echo ÿ    the same reason as the Hipper class.
echo ÿ
echo ÿ    k) We removed the "E" class cruiser. There were only 2 ships, and
echo ÿ    they were old and not very useful in ship combat. (Plus, the
echo ÿ    British have plenty of ships.)
echo ÿ
echo ÿ5) Certain menu options are unavailable to the German player during
echo ÿthe campaign. All menus options that involve Convoys and Patrols
echo ÿcannot be selected.
echo ÿ
echo ÿ6) The ports, "Hull" and "Wilhelmshaven" from the map on the back of
echo ÿthe manual are not used by the game.
echo ÿ
pause
echo ÿ7) Patrol and Escort Pool ships may only be added to or removed from
echo ÿScapa Flow and there is no delay in adding to or removing ships.
echo ÿ
echo ÿ8) If a ship is released from Escort or Patrol duty due to damage or
echo ÿeffectiveness, they will appear in Liverpool.
echo ÿ
echo ÿ9) "Refuelling" Task Forces will not rearm Task Forces. You must
echo ÿ"Disband" a TF at a base in order to rearm a ship.
echo ÿ
echo ÿ10) You will recover one point of effectiveness of every ship in port
echo ÿwith an effectiveness of 70 percent or better per day. This will not
echo ÿrepair damage, but will get your ships and crews up to fighting trim.
echo ÿ
echo ÿ11) "Repair" fixes damaged ships and ships with effectivenesses of
echo ÿunder 100 percent. The number refers to the number of days until the
echo ÿship is repaired.
echo ÿ
echo ÿ12) Repairs will take a minimum of 20 days.
echo ÿ
echo ÿ14) All repair and effectiveness gains occur once a day.
echo ÿ
echo ÿ15) The magnification numbers in the lower left of the Flag Bridge and
echo ÿTactical View screens refer to the number of miles vertically(V:) and
pause
echo ÿhorizontally(H:) displayed.
echo ÿ
echo ÿ16) If a German TF is being "SHADOWED", it cannot engage convoys.
echo ÿ
echo ÿ17) The wind speed will affect the maximum speed of a ship in tactical
echo ÿcombat. The gauge will not change, but you will not be able to speed
echo ÿup past a certain speed.
echo ÿ
echo ÿ18) The "Ship" switch in the "Circle" menu turns on the active ship's
echo ÿrange circles. If you switch to another ship, it still only shows the
echo ÿcircles from the previous ship.
echo ÿ
echo ÿ19) When fighting merchant convoys. Even though the convoy list might
echo ÿshow as many as 20 merchant ships, the combat will only have from
echo ÿseven to ten merchant ships.
echo ÿ
echo ÿ20) On the Flag Bridge and the Tactical Map, the colors on the screen
echo ÿmean different things:
echo ÿ    Blue - German ships/planes.
echo ÿ    Red - British ships/planes.
echo ÿ    Lt. Cyan - Hvy. Caliber (11"-16") shell splashes.
echo ÿ    Cyan - Med. Caliber (8") shell  splashes.
echo ÿ    Lt. Magenta - Lt. Caliber shell splashes.
pause
echo ÿ    Lt. Grey - Torpedoes.
echo ÿ    Dk. Grey - Smoke.
echo ÿ    Lt. Blue - Returning German planes.
echo ÿ    Lt. Red - Returning British planes.
echo ÿ    Yellow Flashing Icon - Ship has been hit.
echo ÿ
echo ÿ21) Torpedoes travel for 80 seconds before they arm.
echo ÿ
echo ÿ22) The German torpedo chart on p. 74 on the manual is missing the
echo ÿfollowing: GVIIaT1 (Long) 15300/30.
echo ÿ
echo ÿ23) When selecting ships in the campaign game, click in the ship name.
echo ÿ
echo ÿ24) On p.29, West of Newfoundland is actually East. (OK, you got us.
echo ÿThe combat doesn't actually happen on land.)
echo ÿ
echo ÿ25) On p.30, West of Montevideo is actually East. (OK, we were having
echo ÿproblems with east and west that day.)
echo ÿ
echo ÿ26) The Status Report shows the undamaged version of each ship.
echo ÿ
echo ÿ27) If the German player runs out of capital ships during a campaign
echo ÿgame, the game will end and the player will only get one-half of the
pause
echo ÿpoints he actually earned during the campaign.
echo ÿ
echo ÿ28) If you have Scout or Attack planes in the air, you must recall
echo ÿthem before the end of combat or you will lose them.
echo ÿ
echo ÿ29) There are four new scenarios not documented by the manual:
echo ÿ
echo ÿ    Denmark Straits with Cruisers - This is the Denmark Straits battle
echo ÿ    with the Norfolk and Suffolk added in the battle.
echo ÿ    (The British get an added punch, maybe)
echo ÿ
echo ÿ    Best Tradition of the Service - Coming out of a fog bank, the
echo ÿ    Glowworm has accidentally stumbled across the Hipper.
echo ÿ    9:57AM     Beaufort Scale: 8     Range: 1000yds.
echo ÿ    (This is a quick one folks)
echo ÿ
echo ÿ    Convoy HX-106 - This is a hypothetical battle of the Sharnhorst
echo ÿ    and Gneisenau ecountering a convoy escorted by the Ramilles and
echo ÿ    two "E" class destroyers.  10:30AM     Beaufort Scale: 3 (Try out
echo ÿ    your convoy killing tactics or practice defending convoys)
echo ÿ
echo ÿ    Old vs. New - Another hypothetical battle pitting the Sharnhorst
echo ÿ    and Gneisenau against the Renown and three "H" class destroyers.
pause
echo ÿ    12:30AM     Beaufort Scale: 8
echo ÿ    (Coordination between the big ship and the destroyers is crutial)
echo ÿ
echo ÿ
echo ÿ
echo ÿAdditional Testers:
echo ÿ    Don McClure
echo ÿ    Matt Vella
echo ÿ
echo ÿ
echo ÿFinal Notes:
echo ÿ
echo ÿ    If the game should crash for any reason, REBOOT the machine.
echo ÿThe sound driver doesn't clean up after itself if the game crashes.
echo ÿ
echo ÿ    We have included a text file called TUTORIAL with the game. The
echo ÿtutorial goes step-by-step through playing the "Gunnery Practice"
echo ÿscenario and the "Operation Rheinubung" campaign games.
echo ÿ
echo ÿ    We hope you enjoy playing this game as much as we had making it.
echo ÿAs we work on the scenarios and the scenario builder, we will
echo ÿcontinue to work on improving the system. If you have any comments or
echo ÿsuggestions, write to me, Ken Humphries c/o Strategic Simulations,
pause
echo ÿInc., 675 Almanor Ave., Suite 201, Sunnyvale, CA 94086. Watch out for
echo ÿthose torpedoes...
echo ÿ
echo ÿ
echo ÿ---Ken
echo ÿ
echo ÿ
echo ÿÿÿ