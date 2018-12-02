/// @description Inherit & set specific variables
// You can write your code in this editor

/// Parent setup and overrides
event_inherited(); // Make sure to inherit from afm_objButton!

// Set the pressed (down) sprite, otherwise it'll use the object's sprite by default
// Set this if you have both an up and a down sprite
pressedSprite = sprSwitchGroundOn;

// The following is unneeded, as it uses the object's sprite by default
//unpressedSprite = afm_sprButtonUp; 

// Turn off the auto-offset to simulated a button moving in
// Turn it off if you have the "press" movement built into the down sprite
useAutoPressAnimation = false;

pressedScript = scrUpdateSwitchStatus;
unpressedScript = scrUpdateSwitchStatus;