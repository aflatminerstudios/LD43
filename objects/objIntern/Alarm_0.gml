/// @description Insert description here
// You can write your code in this editor

var r = random(1);

var oldPosition = [xc, yc]
if (r <= grid[xc, yc].killChance) {
	scrKillIntern(self.id);
} else if (r < grid[xc, yc].dirRight) {
  xc += 1;
  if (xc > GRID_COLUMNS - 1) {
    xc = GRID_COLUMNS - 1;
  }
} else if (r < grid[xc, yc].dirLeft) {
  xc -= 1;
  if (xc < 0) {
    xc = 0;
  }
} else if (r < grid[xc, yc].dirDown) {
  yc += 1;
  if (yc > GRID_ROWS - 1) {
    yc = GRID_ROWS - 1;
  }
} else if (r < grid[xc, yc].dirUp) {
  yc -= 1;
  if (yc < 0) {
    yc = 0;
  }
}

show_debug_message(string(oldPosition[0]) + string(oldPosition[1]) + "->" + string(xc) + string(yc));

alarm[0] = room_speed * walk_speed;