///scrChangeTiles(intern, newX, newY)

var intern = argument0;
var newX = argument1;
var newY = argument2;



with (intern) {
  if (walking && grid[newX, newY].object_index == objPathStop) {    
    return;
  }
      
  //Do not change tiles if on a stop tile AND global stop button has been pushed  
  //So change tiles only if grid square is not a stop tile OR global stop is not enforced  
  //if (!(grid[xc, yc].object_index == objPathStop) || (objRunButton.isPressed)) {
  //if (!place_meeting(x, y, objPathStop) || (objRunButton.isPressed)) {
  if (!targetStop || (objRunButton.isPressed && !walking)) {
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
      xOffset = irandom_range(-25, 25);
      yOffset = irandom_range(-25, 25);
      xPrevious = xc;
      yPrevious = yc;
      xc = newX;
      yc = newY;
      
      if (grid[xc, yc].object_index == objGoal) {
        targetGoal = true;
				yOffset = 30; // Move in front of the goal
      } else if (grid[xc, yc].object_index == objPathStop) {
        targetStop = true; 
      } else {
        targetStop = false; 
      }
  
      alarm[0] = -1;
    } 

  }
}