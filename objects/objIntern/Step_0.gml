/// @description Insert description here
// You can write your code in this editor

var tile = grid[xc, yc];
goalX = tile.x + xOffset;
goalY = tile.y + yOffset;

if (!walking) {
  //If not walking, just draw the character  

  x = goalX;
  y = goalY;

  //x = tile.minSpotX + xc * tile.tileX + tile.tileX / 2;
  //y = tile.minSpotY + yc * tile.tileY + tile.tileY/ 2;
  
} else {
  //If walking, move towards new tile position
  move_towards_point(goalX, goalY, walkSpeed); 

  //If at new position, stop walking and add in tile check
  if (abs(x - goalX) < 2) && (abs(y - goalY) < 2) {
    
    walking = false;    
    if (targetGoal) {
      alarm[1] = room_speed / 3; 
    }
    alarm[0] = 1;
    
    
  }
    
  if (position_meeting(x, y, tile) && alarm[0] <= 0 && !targetGoal) {
    //If in new square, set alarm
    alarm[0] = room_speed * checkTime;
    //If walking into an instant-death square, then die upon hitting the square
		if (grid[xc, yc].currentKillChance >= 1.0) {
        scrKillIntern(self.id); 
    }
  }
}