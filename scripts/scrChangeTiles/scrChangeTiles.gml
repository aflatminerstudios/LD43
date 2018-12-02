///scrChangeTiles(intern, newX, newY)

var intern = argument0;
var newX = argument1;
var newY = argument2;



with (intern) {
  //Do not change tiles if on a stop tile AND global stop button has been pushed  
  //So change tiles only if grid square is not a stop tile OR global stop is enforced
  //if (!(grid[xc, yc] is Stop tile) || (global stop is happening)) {
  
  
    //Only do this if not walking OR if new target is different from old
    if ((!walking) ||  (newX != xPrevious || newY != yPrevious)) {
      walking = true;
      xOffset = irandom_range(-20, 20);
      yOffset = irandom_range(-20, 20);
      xPrevious = xc;
      yPrevious = yc;
      xc = newX;
      yc = newY;
      if (grid[xc, yc].killChance >= 1.0) {
        dying = true; 
      }
  
      if (grid[xc, yc].object_index == objGoal) {
        targetGoal = true; 
      }
  
      alarm[0] = -1;
    } 

  //}
}