/// @description Insert description here
// You can write your code in this editor


onTile = true;


if (rolling) {
  
  if (onTile) {
  
    if (sprite_index != sprBoulderRolling) {
      sprite_index = sprBoulderRolling; 
    }
  
    motion_set(dir, rollSpeed); 
    
    //If collides with a pit
    var colliding = instance_place(x, y, objTilePitTrap);
    if (colliding != noone && colliding.currentKillChance == 1.0)  {     
      scrBoulderFall(self.id);
    }
    
    //If outside of screen
    if (x > 680 || x < 115 || y < 100 || y > 505) {
      scrBoulderFall(self.id);
    }
    
    
  } else {
    var targetXc = stand.xc;
    var targetYc = stand.yc;
    if (dir == 0)
      targetXc += 1;
    else
      targetXc -= 1;
    
    var targetX = objGameControl.grid[targetXc, targetYc].x;
    var targetY = objGameControl.grid[targetXc, targetYc].y;
    
    move_towards_point(targetX, targetY, rollSpeed);
    
    if (abs(x - targetX) < rollSpeed && abs(y - targetY) < rollSpeed) {
      x = targetX;
      y = targetY;
      onTile = true;
    }
  }
}