/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Multiple inheritance through objSwitch
event_perform_object(objSwitch, ev_create, 0);

pressedSprite = sprTilePressurePlateDown

// Used to determine pressed & released, false = no contact, true = contact
prevDown = false;
currDown = false;


// Convert the objTile switchID array into a single variable for proper comparison in parent	
switchID = switchID[0]; 