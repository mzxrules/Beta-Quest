# Beta-Quest
Ocarina of Time, Beta Quest by mzxrules

## Build Notes

* Add a decompressed 1.0 version of Ocarina of Time named base.z64 into the roms folder

* Install the same toolchain used for Testrunner/OoT-Randomizer (described in ASM/readme.md)

* Run make in the src directory

* Run build.py in the scripts directory to generate port.z64 within the roms folder

## What is this?

The Beta Quest mod is an entrance randomizer built from the NTSC 1.0 release.
It works like this:
	
Your file name is used to seed the random number generator, used to shuffle entrances. Every time you are spawned into the game, the mod intercepts your next entrance id, and compares it to a master entrance id table.
	
The bulk of all valid entrance ids are shuffled amongst themselves, meaning that if you touch an exit that takes you into an entrance index within this list, you will only ever end up at a spawn within this list.
	
A much smaller subset of valid entrance ids are randomly given an id by picking a random entrance id from the master table. Entrance Ids randomized this way are able to send you to a duplicate location. For example, entry points into the "generic" and Fairy Fountain grottos are randomized in this way.
	
An even smaller subset of valid entrance ids are not randomized to make it possible to obtain certain items.
	
## Which version should I use?
Due to issues with emulation, there are two different versions of the mod.
	
"Fix" has a hack applied that is intended to eliminate the delay that occurs when pausing or getting game over in older emulators like Project 64 1.6. This will cause a trippy graphical glitch, but is otherwise harmless.
	
"No Fix" does not have the above hack. This version is packed into the Wii wad.

## Gamplay Changes

 * Added a special mode where entrances are are constantly being shuffled. To play this mode, simply set your filename to "RNG-Only", case specific.
	
 * Added a special check to prevent wrong warps, as they cannot be safely randomized. Attempting to wrong warp will ruin your game. 
	
	Note: Cutscene skips should not be affected (Forest/Water/Shadow/Spirit medallions, warp songs, etc.)
	
 * Shortened several key quest cutscenes, and made it possible to press start to skip
    the final cutscene. A side effect of this is that you can no longer BA off of the
    Light Arrow cs.
	
 * Entrances that crash as a Child or Adult have been tweaked to not crash. As a result,
	all dungeons can be beaten as a child
	
 * The Nabooru Knuckle fight now also triggers as a child, preventing you from becoming
	trapped in the room.
	
 * Child Link is now able to equip all 3 tunics, and the Mirror Shield
	
 * Added a secret area that can only be reached by entering a grotto. It will disappear once you open the chest at the end. 
	
	Note: Although the possibility is very small, beating the secret area may be mandatory for beating the game.
	
 * Until you obtain magic, Great Fairy Fountains will always take you to the magic one. The Magic Great Fairy Fountain's exit will depend on the initial entrance used
	
 * Ganon's Castle (outside area) spawns have been tweaked to keep you in bounds
 
 * All of Tower Collapse's temporary events (except for the collapse cutscene itself) have been made permanent
	
 * Farore's Wind restore points are retained when going through time 
 
 * The Song of Time door will now open when spawning from all entrances
 
 * Imported 1.2's Kakariko Graveyard to eliminate sticky graves
 
 * Holding L (Dpad-Up on Wii) and pressing different combinations of the following buttons when going through a loading zone will change your current tunic color:
	
	 * Z, C-Up, C-Down, C-Left, C-Right
	 * Start
	 * R

V1A Changes: 

* Imported 1.2's Ice Cavern to fix odd camera issue

* Sheik will now teach Child Link Serenade

* Patched classic OoT bug where dying outside Temple of Time would crash (thanks maxx)

* Modified the end of the Requiem cutscene so that it no longer sets the "dust storm" transition, which caused crashes/softlocks
	
* Modified Twinrova so that Phase 1 can be completed in 3 hits instead of 4
 
 
Known Issues:

 * When walking around (especially as an adult), you will trigger the infamous fog glitch.
 
