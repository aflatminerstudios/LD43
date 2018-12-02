/// @description Insert description here
// You can write your code in this editor

grid[0, 0] = 0;

// Find the tiles in the room and assign them to the grid
for (var i = 0; i < GRID_COLUMNS; i++) {
  for (var j = 0; j < GRID_ROWS ; j++) {  
    var tile;
    if (i == 3 && j == 5)
      tile = instance_create_layer(i, j, "Tiles", objTilePitTrap);      
    else
      tile = instance_create_layer(i, j, "Tiles", choose(objTilePitTrap, objTileNorthSouth, objTileWestEast, objTileNorthWest, objTileNorthEast, objTileSouthWest, objTileSouthEast));
		tile.x = GRID_X+i*GRID_CELL_WIDTH + GRID_CELL_WIDTH/2;
		tile.y = GRID_Y+j*GRID_CELL_HEIGHT + GRID_CELL_HEIGHT/2;
		
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
