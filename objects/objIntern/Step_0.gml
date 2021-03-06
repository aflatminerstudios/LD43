/// @description Insert description here
// You can write your code in this editor

var tile = grid[xc, yc];
goalX = tile.x + xOffset;
goalY = tile.y + yOffset;

if (!walking) {
  //If not walking, just draw the character  

  x = goalX;
  y = goalY;
  
  if (sprite_index != sprInternIdle)
    sprite_index = sprInternIdle;

  //x = tile.minSpotX + xc * tile.tileX + tile.tileX / 2;
  //y = tile.minSpotY + yc * tile.tileY + tile.tileY/ 2;
  
} else {
  var curSpeed = walkSpeed;
  if (objFastForwardButton.isPressed) {
    curSpeed *= runMult;
  }
  //If walking, move towards new tile position
  move_towards_point(goalX, goalY, curSpeed); 

  //If at new position, stop walking and add in tile check
  if (abs(x - goalX) <= curSpeed) && (abs(y - goalY) <= curSpeed) {
    
    walking = false;    
    if (targetGoal) {
      alarm[1] = room_speed / 5; 
      afm_scrPlaySoundWithRandomVarianceInRange(sndVictory, 1.0, 1.0);
    }
    alarm[0] = 1;
    
    
  }
    
  if (position_meeting(x, y, tile) && alarm[0] <= 0 && !targetGoal && tile.object_index != objPathStop) {
    //If in new square, set alarm
    alarm[0] = room_speed * checkTime;
    //If walking into an instant-death square, then die upon hitting the square
		if (grid[xc, yc].currentKillChance >= 1.0) {
        scrKillIntern(self.id); 
    }
  }
}