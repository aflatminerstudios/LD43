/// @description Insert description here
// You can write your code in this editor

spawnTime = 0.11;
grid = noone;


//alarm[0] = spawnTime * room_speed;

// Hack to move entrances above the room foregrounds. Replace with proper layer logic?
var fgDepth = layer_get_depth("Foreground");
depth = fgDepth - 1;