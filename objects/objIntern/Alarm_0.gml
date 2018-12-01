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
  
} else if (r < grid[xc, yc].dirDown) {
  
} else if (r < grid[xc, yc].dirUp) {
  
}

alarm[0] = room_speed * walk_speed;