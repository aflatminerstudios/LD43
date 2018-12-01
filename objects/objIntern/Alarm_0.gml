/// @description Insert description here
// You can write your code in this editor

var r = random(1);
show_debug_message(r);
/*dirLeft = 0;
dirRight = 0;
dirDown = 0;
dirUp = 0;
*/

if (r < grid[xc, yc].dirRight) {
  
  xc += 1;
  show_debug_message("moving right?")

} else if (r < grid[xc, yc].dirLeft) {
  xc -= 1;
} else if (r < grid[xc, yc].dirDown) {
  yc += 1;
} else if (r < grid[xc, yc].dirUp) {
  yc -= 1;
}

if (xc > objGameControl.rows - 1)
  xc = objGameControl.rows - 1;
if (yc > objGameControl.columns - 1)
  yc = objGameControl.columns - 1;
if (xc < 0)
  xc = 0;
if (yc < 0)
  yc = 0;

alarm[0] = room_speed * walk_speed;