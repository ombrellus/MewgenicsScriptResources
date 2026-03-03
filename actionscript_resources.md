# HOW TO USE THE ACTIONSCRIPT FUNCTIONS

Go into ActionScript Settings in your .fla file and disable “Strict Mode” to be able to call these properly.
If you have any script errors at all, then flash will NOT export your scripts (and also will break your AS linkage names)

## FUNCTION LIST (currently known):

`SetAutoflip()`
-- Makes the symbol flip itself when facing left.

`castpoint()`
-- Triggers whatever attack/spell this animation is for on that frame.

`setInvisible()`
-- Sets the symbol to be invisible.

`ScreenShake(length: float, intensity: float)`
-- Shakes the screen.

`ScreamRing(length: float)`
-- Creates a shockwave-like vibrating effect around the screen. Used by Pyrophina and Man in the Moon.

`DistortionRing(speed(?): float)`
-- Creates a distortion wave that expands outwards.

`initCharacterPlaceholder(obj: MovieClip)`
-- Marks this object as a character placeholder. (This is used in attacks that also animate the target visually, like Daddy Shark)

A copy of the template cat most commonly used in animations can be found [here](templates/actionscript/PlaceholderCat.fla).

`SetRandomFrame()`
-- Sets the Movieclip to a random frame.
> TODO: Check how this is different from `StartAtRandomFrame`

`StartAtRandomFrame()`
-- Starts the Movieclip at a random frame.
> TODO: Check if this takes in params

`SetChampionVariant(obj: MovieClip)`
-- Sets the second frame of this Movieclip to be used when the character is a champion.
Automatically freezes the Movieclip.	

`begin_rolling()`
-- Used by Gambit’s dice to start Gambit’s color changing animation, unknown effect if used outside of his animations.

`roll()`
-- Used by Gambit dice to decide which number to land on, unknown effect if used outside of his animations.

`SetGlyphFrameAlt(triggerName(?): String)`
-- Presumably used to set alternate versions of assets depending on certain conditions. Used by The Tormentor.
> TODO: figure out what this does in specific

`VerticalCameraPanner(obj: MovieClip)`
> TODO: figure out what this does

`SetPersistentRandomFrame(obj: MovieClip)`
-- Presumably sets this Movieclip to a random frame, and keeps it on that frame throughout animations.
> TODO: figure out what this does in specific

`particle_burst(particleName: String)`
-- Creates a burst of particles. Particle names can be viewed from the dev menu’s particle editor.

`FullScreenEffect(particleName: String)`
>TODO: figure out what this does, takes in a particle name. used in The Tormentor’s death animation

`gib()`
-- Spawns gibs(?) I dont see anything change when using this, so im not sure.
>TODO: figure out what this does.

`SetLightSource(obj: MovieClip, unkBool: Boolean)`
>TODO: figure out what this does. Used by “lightsourcedriver_49” in bosses2.swf

`WaitForHookReturn(obj: MovieClip)`
Pauses the Movieclip until whatever it's hooking returns back to it. Used by characters that hook other characters.