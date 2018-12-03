///scrChangeTiles(intern, newX, newY)

var intern = argument0;
var newX = argument1;
var newY = argument2;



with (intern) {
  //Do not change tiles if on a stop tile AND global stop button has been pushed  
  //So change tiles only if grid square is not a stop tile OR global stop is not enforced  
  if (!(grid[xc, yc].object_index == objPathStop) || (objRunButton.isPressed)) {
  
  
    //Only do this if not walking OR if new target is different from old
    if ((!walking) ||  (newX != xPrevious || newY != yPrevious)) {
      
      if (newX - xc == 1) {
        sprite_index = sprInternRunLeft;
        image_xscale = -1;        
      } else if (newX - xc == -1) {
        sprite_index = sprInternRunLeft;
        image_xscale = 1;        
      } else if (newY - yc == 1) {
        sprite_index = sprInternRunDown;
        image_xscale = 1;        
      } else if (newY - yc == -1) {
        sprite_index = sprInternRunUp;
        image_xscale = 1;        
      }
      
      walking = true;
      xOffset = irandom_range(-20, 20);
      yOffset = irandom_range(-20, 20);
      xPrevious = xc;
      yPrevious = yc;
      xc = newX;
      yc = newY;
      
      if (grid[xc, yc].object_index == objGoal) {
        targetGoal = true; 
      }
  
      alarm[0] = -1;
    } 

  }
}