/// @description Insert description here
// You can write your code in this editor

var r = random(1);

var oldPosition = [xc, yc];

alarm[0] = room_speed * checkTime;

var currentTile = grid[xc, yc];
var isTrapTile = object_is_ancestor(currentTile.object_index, objTrap);
var isActivatedTrap = false;
if(isTrapTile) {
	isActivatedTrap = currentTile.isActivated;	
}

if (isActivatedTrap && r < currentTile.currentKillChance) {
	scrKillIntern(self.id);
} else if (r < grid[xc, yc].dirLeft) {    
  if (xc - 1 >= 0) {    
    scrChangeTiles(self.id, xc - 1, yc);
  }

} else if (r < grid[xc, yc].dirRight) {  
  if (xc + 1 <= GRID_COLUMNS - 1) {
    scrChangeTiles(self.id, xc + 1, yc);
  }
  
} else if (r < grid[xc, yc].dirDown) { 
  if (yc + 1 <= GRID_ROWS - 1) {
    scrChangeTiles(self.id, xc, yc + 1);
  }
} else if (r < grid[xc, yc].dirUp) {
  
  if (yc - 1 >= 0) {
    scrChangeTiles(self.id, xc, yc - 1);
  }
}

