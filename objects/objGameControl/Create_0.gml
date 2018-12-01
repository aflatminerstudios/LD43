/// @description Insert description here
// You can write your code in this editor

randomize();

rows = 10;
columns = 10;

grid[0, 0] = 0;

for (var i = 0; i < rows; i++) {
  for (var j = 0; j < columns ; j++) {  
    var tile = instance_create_depth(i, j, 0, objTile);  
    grid[i, j] = tile;
    tile.xc = i;
    tile.yc = j;
    tile.right = 1;
  }
}

internControl = instance_create_depth(0, 0, 1000, objInternControl);
internControl.xc = 0;
internControl.yc = 0;
internControl.grid = grid;
