/// @description Insert description here
// You can write your code in this editor

var r = random(1);

var oldPosition = [xc, yc];

alarm[0] = room_speed * checkTime;

if (r < grid[xc, yc].killChance) {
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


/*
else if (r < grid[xc, yc].dirLeft) {
  xc -= 1;
  if (xc - 1 >= 0) {
    xc = 0;
  } else {
    scrChangeTiles(self.id, xc - 1, yc);
  }
} else if (r < grid[xc, yc].dirRight) {
  xc += 1;
  if (xc > GRID_COLUMNS - 1) {
    xc = GRID_COLUMNS - 1;
  }
  scrChangeTiles(self.id, xc + 1, yc);
} else if (r < grid[xc, yc].dirDown) {
  yc += 1;
  if (yc > GRID_ROWS - 1) {
    yc = GRID_ROWS - 1;
  }
  scrChangeTiles(self.id, xc, yc + 1);
} else if (r < grid[xc, yc].dirUp) {
  yc -= 1;
  if (yc < 0) {
    yc = 0;
  }
  scrChangeTiles(self.id, xc, yc - 1);
}



*/
