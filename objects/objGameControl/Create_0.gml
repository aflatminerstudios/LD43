/// @description Insert description here
// You can write your code in this editor

grid[0, 0] = 0;

// Find the tiles in the room and assign them to the grid
scrPopulateGridFromRoom();

internControl = instance_create_depth(0, 0, 1000, objInternControl);
internControl.xc = 0;
internControl.yc = 0;
internControl.grid = grid;

instance_create_depth(0, 0, 1000, objSwitchboard);
