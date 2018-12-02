/// @description Insert description here
// You can write your code in this editor

xc = 0;
yc = 0;


parent = noone;
checkTime = 0.5;
walkSpeed = 1;
grid = noone;
//This currently means walking into an instant-death square
dying = false;

xOffset = irandom_range(-20, 20);
yOffset = irandom_range(-20, 20);

//For moving
xPrevious = 0;
yPrevious = 0;

alarm[0] = room_speed * checkTime;

//This controls whether character is actively walking between tiles
walking = false;