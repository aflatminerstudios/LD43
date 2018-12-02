/// @description Insert description here
// You can write your code in this editor

xc = 0;
yc = 0;
parent = noone;
walk_speed = 0.5;
grid = noone;
dying = false;

xOffset = irandom_range(-20, 20);
yOffset = irandom_range(-20, 20);

alarm[0] = room_speed * walk_speed;