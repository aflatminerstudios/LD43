/// @description Insert description here
// You can write your code in this editor

var tile = grid[xc, yc];


x = tile.minSpotX + xc * tile.tileX + tile.tileX / 2;
y = tile.minSpotY + yc * tile.tileY + tile.tileY/ 2;

draw_self();