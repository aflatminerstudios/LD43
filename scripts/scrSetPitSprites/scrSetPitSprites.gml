///scrSetPitSprites()

//Sets pits to appropriate sprites so they don't look as tiled

with (objGameControl) {
  //Go through every grid square and if it is a pit, check for other pits surrounding it
  for (var i = 0; i < GRID_COLUMNS; i++) {
  	for (var j = 0; j < GRID_ROWS ; j++) {  
      
      var tile = grid[i, j];
      
      if (tile.object_index == objTilePitTrap) {
        var top = false;
        var bottom = false;
        var left = false;
        var right = false;
      
        if (j > 0 && grid[i, j - 1].object_index == objTilePitTrap) {
          top = true; 
        } 
    
        if (j < GRID_ROWS - 1 && grid[i, j + 1].object_index == objTilePitTrap) {
          bottom = true; 
        } 

        if (i > 0 && grid[i - 1, j].object_index == objTilePitTrap) {
          left = true; 
        } 

        if (i < GRID_COLUMNS - 1 && grid[i + 1, j].object_index == objTilePitTrap) {
          right = true; 
        } 

        if (top && bottom && left && right)
          tile.sprite_index = sprPitEmpty;
        else if (top && !bottom && !left && !right)
          tile.sprite_index = sprPit3Sided;
        else if (!top && bottom && !left && !right) {
          tile.sprite_index = sprPit3Sided;
          tile.image_angle = 180;
        } else if (!top && !bottom && left && !right) {
          tile.sprite_index = sprPit3Sided;
          tile.image_angle = 90;
        } else if (!top && !bottom && !left && right) {
          tile.sprite_index = sprPit3Sided;
          tile.image_angle = -90;
        } else if (top && bottom && !left && !right)
          tile.sprite_index = sprPitColumn;
        else if (!top && !bottom && left && right) {
          tile.sprite_index = sprPitColumn;
          tile.image_angle = 90;
        } else if (top && !bottom && !left && right) {
          tile.sprite_index = sprPitCorner
        } else if (top && !bottom && left && !right) {
          tile.sprite_index = sprPitCorner
          tile.image_xscale = -1;
        } else if (!top && bottom && left && !right) {
          tile.sprite_index = sprPitCorner
          tile.image_yscale = -1;
          tile.image_xscale = -1;
        } else if (!top && bottom && !left && right) {
          tile.sprite_index = sprPitCorner
//          tile.image_xscale = -1;
          tile.image_yscale = -1;
        } else if (top && bottom && left && !right) {
          tile.sprite_index = sprPitOneSided; 
        } else if (top && bottom && !left && right) {
          tile.sprite_index = sprPitOneSided;
          tile.image_xscale = -1;
        } else if (top && !bottom && left && right) {
          tile.sprite_index = sprPitOneSided;
          tile.image_angle = -90;
        } else if (!top && bottom && left && right) {
          tile.sprite_index = sprPitOneSided;
          tile.image_angle = 90;          
        }
        
      }
  	}
  } 
}