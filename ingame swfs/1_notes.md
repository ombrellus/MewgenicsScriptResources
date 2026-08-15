Notes for SWF modding (not very orderly)

# Locations

Since some locations for stuff is not incredibly clear it's been notated here

* Tile effects -> effects.fla

# Office Specifications

Offices are interesting in that they have different "states" the camera angle can be in. Because each "state" is actually a different frame in an office file, with the entities and textbox being moved around, this opens up some very interesting possibilities.

## Multiple NPCs

Since the game reads the current container (npc object) onscreen to call animations on, it's completely possible to make two different "states" with different containers and textbox placements that still look as if they were part of the same exact scene.

## NPC Animations and Actionscript Statements

Because Mewgenics's actionscript statements are universal, it opens up the possibility for much more dynamic animations. 
The actionscript statement with the MOST potential is `gotoAndPlay("loop");`, as this allows for certain animations to have "intros" that dont play again. This opens up the ability to have NPCs "enter" and "exit" the scene.

# Graphic Overlays

One of the most common issues with different mods appending to the same source file is the issue of graphic overlays. Sometimes, you'll finish making your .fla, and get something like this:

![Failed Image Graphic](util_images/failedgraphic.png)

Not good!

The most common reason this can occur is from **graphic overlaying**; i.e, when a frame containing a type graphic is appended to the same frame containing a type movieclip, the graphic will overlay the movieclip of the preceeding frame.

The following chart expressely identifies the behaviors of two different mods appending to the same frame, where "overlay" means either of the graphics overlay each other.

| **Second Mod Loaded** |  | Frame 1, _Graphic_ | Frame 2, _Graphic_ | Frame 1, _Movieclip_ | Frame 2, _Movieclip_ |
|---|---|---|---|---|---|
| **First Mod Loaded** |   |   |   |   |
| Frame 1, _Graphic_ |   | Overlay | Overlay | Overlay | Overlay |
| Frame 2, _Graphic_ |   | Overlay | Normal | Overlay | Overlay |
| Frame 1, _Movieclip_ |   | Normal | Normal | Normal | Normal |
| Frame 2, _Movieclip_ |   | Normal | Normal | Normal | **Normal** |


_From this, it can be correctly assumed that the **safest way to avoid these mistakes** is by **setting every single type of object in a appended scene to a movieclip.**_

# Proof of Sincerity (FLAS)

I, (CVS), owner of the copies of documents events.fla, modular_cutscenes.fla, and ui.fla hereby recognize that any damages or malware given from the following documents must be attributed to my actions and causes. I (CVS) understand that these documents do not belong to me in any creative or licensable production and that I cannot personally gain from the copying or production of said documents. Any legal issues pertaining to LEGAL use of the copies of software (documents) or LEGAL admission of the copies of software (documents) that are proven to directly source from my copies of the documents are under my name and their use is affiliated with me. Users have the right to copy, modify and merge the document. All legal actions occuring with specific copies of these documents located (under my google drive) should include this set of statements. Users that withold this info are liable to personal charges and issues without my (CVS) interference or prescence. 

I (CVS) recognize that any user may follow these liscences with the following exceptions:

USERS ARE STRICTLY PROHIBITED FROM SELLING, PUBLISHING, OR DISTRIBUTING THE DOCUMENTS (SOFTWARE) IN ANY WAY THAT WOULD GIVE THEM PERSONAL MONETARY GAIN FROM THE CONTENTS OF THE DOCUMENTS. I (CVS) AM NOT LIABLE TO CHARGES IN TERMS OF WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR NONINFRINGEMENT THAT PERTAINS TO ANY SORT OF DIGITAL OR CURRENCY RELATED CHANGING OR SHARING OF THE DOCUMENTS. I (CVS) MAY WITHOLD MY PRESCENCE IN ISSUES WITH IMPROPER COPIES, SHARES, AND SUCH THAT DO NOT PERTAIN TO THE INTENDED USE OF THE DOCUMENTS. PIRACY IS NOT A VICTIMLESS CRIME.
