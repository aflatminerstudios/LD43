/// @description Insert description here
// You can write your code in this editor

xc = 0;
yc = 0;


parent = noone;
checkTime = 0.5;
walkSpeed = 2;

//If fast-forward is pressed, multiply by:
runMult = 3;

grid = noone;
//This currently means walking into an instant-death square
dying = false;

xOffset = irandom_range(-20, 20);
yOffset = irandom_range(-20, 20);

//For moving
xPrevious = 0;
yPrevious = 0;

alarm[0] = 1;

//This controls whether character is actively walking between tiles
walking = false;

//Is the character's target tile the goal
targetGoal = false;