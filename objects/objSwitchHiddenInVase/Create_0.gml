/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

pressedSprite = sprSwitchGroundOn;
unpressedSprite = sprSwitchGroundOff;

// Create an empty tile below me
instance_create_layer(x, y, "Tiles", objEmptyTile);