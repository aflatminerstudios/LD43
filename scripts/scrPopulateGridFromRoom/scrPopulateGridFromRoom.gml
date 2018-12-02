/// scrPopulateGridFromRoom()

with(objGameControl) {
// Find the tiles in the room and assign them to the grid
	for (var i = 0; i < GRID_COLUMNS; i++) {
	  for (var j = 0; j < GRID_ROWS ; j++) {  
	    testX = GRID_X+i*GRID_CELL_WIDTH + GRID_CELL_WIDTH/2;
			testY = GRID_Y+j*GRID_CELL_HEIGHT + GRID_CELL_HEIGHT/2;
			
			var tile = instance_position(testX, testY, objTile);
			if(tile == noone)
				tile = instance_create_layer(testX, testY, "Tiles", objTilePitTrap);

	    grid[i, j] = tile;
	    tile.xc = i;
	    tile.yc = j;
	  }
	}
}